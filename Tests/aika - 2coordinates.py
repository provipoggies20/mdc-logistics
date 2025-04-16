import os
import time
import requests
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import mysql.connector
from mysql.connector import Error
from selenium.common.exceptions import NoSuchElementException, StaleElementReferenceException
from geopy.geocoders import Nominatim
from datetime import datetime

# Global variable to count printed lines
line_count = 0
last_known_address = "No address available"

# Function to clear the console
def clear_console():
    global line_count
    os.system('cls' if os.name == 'nt' else 'clear')
    line_count = 0

# Function to print messages and manage line count
def print_message(message):
    global line_count
    print(message)
    line_count += 1
    if line_count >= 100:  # Check if line count exceeds 100
        clear_console()

# Function to check internet connection
def check_internet_connection():
    try:
        requests.get("http://www.google.com", timeout=5)
        return True
    except requests.ConnectionError:
        return False

# Function to initialize the WebDriver
def initialize_driver():
    chrome_options = Options()
    chrome_options.add_argument("--disable-extensions")
    chrome_options.add_argument("--no-sandbox")  # Add this line for better compatibility
    chrome_options.add_argument("--start-maximized")  # Start maximized
    service = Service(r'C:\Users\ADMIN\Desktop\SYSTEM\chromedriver-win64\chromedriver-win64\chromedriver.exe')  # Update with the correct path
    driver = webdriver.Chrome(service=service, options=chrome_options)
    return driver

# Function to connect to MySQL database
def create_connection():
    try:
        connection = mysql.connector.connect(
            host='localhost',
            database='mdc',
            user='root',
            password=''
        )
        if connection.is_connected():
            print_message("Connected to MySQL database")
            return connection
    except Error as e:
        print_message(f"Error: {e}")
        return None

# Function to create the devices table if it doesn't exist
def create_table(connection):
    try:
        cursor = connection.cursor()
        create_table_query = '''
        CREATE TABLE IF NOT EXISTS devices (
            id INT AUTO_INCREMENT PRIMARY KEY,
            target_name VARCHAR(255) UNIQUE,
            type VARCHAR(255),
            license_plate_no VARCHAR(255),
            speed_limit FLOAT,
            latitude DOUBLE,
            longitude DOUBLE,
            speed FLOAT,
            direction VARCHAR(255),
            total_mileage FLOAT,
            status VARCHAR(255),
            position_time DATETIME,
            address VARCHAR(255)
        )
        '''
        cursor.execute(create_table_query)
        connection.commit()
        print_message("Table 'devices' created or already exists.")
    except Error as e:
        print_message(f"Error creating table: {e}")

# Function to get the address from coordinates using Geopy
def get_address_from_coordinates(latitude, longitude):
    geolocator = Nominatim(user_agent="myGeocoder")
    retries = 3
    for attempt in range(retries):
        try:
            location = geolocator.reverse((latitude, longitude), exactly_one=True)
            if location:
                return location.address
            else:
                return "Address not found"
        except Exception as e:
            print_message(f"Error in reverse geocoding: {e}. Retrying...")
            time.sleep(2)
    print_message(f"Failed to geocode after {retries} attempts.")
    return "Error in geocoding"

# Function to insert or update data in the MySQL database
def insert_or_update_data(connection, device_data):
    global last_known_address

    if connection is None or not connection.is_connected():
        print_message("Database connection is lost. Skipping update.")
        return False  # Indicate failure

    try:
        cursor = connection.cursor()
        
        if len(device_data) < 11:
            print_message("Device data is incomplete.")
            return False  # Indicate failure

        try:
            latitude = float(device_data[4])
            longitude = float(device_data[5])
        except ValueError:
            print_message("Error converting latitude/longitude.")
            return False  # Indicate failure
        
        if not (-90 <= latitude <= 90) or not (-180 <= longitude <= 180):
            print_message("Invalid latitude or longitude.")
            return False  # Indicate failure
        
        address = get_address_from_coordinates(latitude, longitude)
        last_known_address = address if "Error" not in address else last_known_address

        select_query = "SELECT COUNT(*) FROM devices WHERE target_name = %s"
        cursor.execute(select_query, (device_data[0],))
        count = cursor.fetchone()[0]

        if count > 0:
            update_query = '''
            UPDATE devices
            SET type = %s, license_plate_no = %s, speed_limit = %s, latitude = %s,
                longitude = %s, speed = %s, direction = %s, total_mileage = %s,
                status = %s, position_time = %s, address = %s
            WHERE target_name = %s
            '''
            cursor.execute(update_query, (*device_data[1:], address, device_data[0]))
            print_message(f"Updated record for target_name: {device_data[0]}")
        else:
            insert_query = '''
            INSERT INTO devices (target_name, type, license_plate_no, speed_limit, latitude, longitude, speed, direction, total_mileage, status, position_time, address)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            '''
            cursor.execute(insert_query, device_data + [address])
            print_message(f"Inserted new record for target_name: {device_data[0]}")

        connection.commit()
        return True  # Indicate success
    except Error as e:
        print_message(f"Error inserting/updating data: {e}")
        return False  # Indicate failure

# Function to scrape data from the page
def scrape_data(driver, url):
    driver.get(url)

    try:
        wait = WebDriverWait(driver, 30, ignored_exceptions=(NoSuchElementException, StaleElementReferenceException))
        wait.until(EC.presence_of_element_located((By.ID, 'pageShowFrame_Map')))
        iframe = driver.find_element(By.ID, 'pageShowFrame_Map')
        driver.switch_to.frame(iframe)
        print_message("Switched to iframe 'pageShowFrame_Map'.")
    except Exception as e:
        print_message(f"Error waiting for iframe: {e}")
        return []

    try:
        wait.until(EC.presence_of_element_located((By.ID, 'divDevicesList')))
        print_message("Div 'divDevicesList' found.")
    except Exception as e:
        print_message(f"Error waiting for div 'divDevicesList': {e}")
        return []

    try:
        div_devices_list = driver.find_element(By.ID, 'divDevicesList')
        div_devices_list_info = div_devices_list.find_element(By.ID, 'divDevicesListInfo')
        print_message("Div 'divDevicesListInfo' found.")
    except Exception as e:
        print_message(f"Error finding 'divDevicesListInfo': {e}")
        return []

    # Wait for the table to be present within 'divDevicesListInfo'
    try:
        wait.until(EC.presence_of_element_located((By.TAG_NAME, 'table')))  # Wait for the table to be present
        table = div_devices_list_info.find_element(By.TAG_NAME, 'table')  # Find the first table within the div
        print_message("Table found.")
    except Exception as e:
        print_message(f"Error finding table: {e}")
        return []

    # Extract data from the table
    data = []
    try:
        rows = table.find_elements(By.TAG_NAME, 'tr')  # Get all rows in the table
        for row in rows[1:]:  # Skip the header row
            cols = row.find_elements(By.TAG_NAME, 'td')  # Get all columns in the row
            row_data = [col.text.strip() for col in cols]  # Extract text from each column
            if row_data:  # Ensure row_data is not empty
                data.append(row_data)  # Append the row data to the list
        print_message(f"Extracted {len(data)} records from the table.")
    except Exception as e:
        print_message(f"Error extracting data from the table: {e}")

    return data

# Main function to run the scraper
def main():
    driver = initialize_driver()
    connection = create_connection()
    create_table(connection)

    url = 'https://en.aika168.com'  # Replace with the actual URL

    while True:  # Loop to keep checking for internet connection
        if not check_internet_connection():
            print_message("No internet connection. Last known address: " + last_known_address)
            time.sleep(5)  # Wait before retrying
            continue  # Skip to the next iteration to check again

        device_data_list = scrape_data(driver, url)

        successful_updates = 0
        for device_data in device_data_list:
            if insert_or_update_data(connection, device_data):
                successful_updates += 1

        # Print a summary message after processing all records
        if successful_updates > 0:
            print_message(f"Successfully updated {successful_updates} records at {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}.")
        else:
            print_message("No records were updated.")

        # Wait for 20 seconds before the next scrape
        time.sleep(20)

    driver.quit()
    if connection.is_connected():
        connection.close()
        print_message("MySQL connection closed.")

if __name__ == "__main__":
    main()
