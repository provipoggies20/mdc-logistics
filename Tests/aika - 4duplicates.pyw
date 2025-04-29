import os
import time
import requests
from requests.exceptions import HTTPError, ConnectionError
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException
import mysql.connector
from mysql.connector import Error
from selenium.common.exceptions import NoSuchElementException, StaleElementReferenceException
from geopy.geocoders import Nominatim
from datetime import datetime
import logging
from fuzzywuzzy import fuzz

# Get the current directory of the script
current_directory = os.path.dirname(os.path.abspath(__file__))

# Define the Logs directory path
logs_directory = os.path.join(current_directory, 'Logs')

# Ensure the Logs directory exists
os.makedirs(logs_directory, exist_ok=True)

# Define the full path for the log file inside the Logs directory
log_file_path = os.path.join(logs_directory, 'aika.log')

# Configure logging with date and time format
logging.basicConfig(
    filename=log_file_path,
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    datefmt='%Y-%m-%d %H:%M:%S'
)

# Global variable to count printed lines
line_count = 0
last_known_address = "No address available"

# Function to clear the console using ANSI escape codes
def clear_console():
    global line_count
    print("\033[H\033[J", end="")  # ANSI escape code to clear the console
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
        requests.get("http://www.google.com", timeout=300)
        return True
    except requests.ConnectionError:
        return False

# Function to initialize the WebDriver
def initialize_driver():
    chrome_options = Options()
    chrome_options.add_argument("--disable-extensions")
    chrome_options.add_argument("--no-sandbox")  # Add this line for better compatibility
    chrome_options.add_argument("--start-maximized")  # Start maximized
    chrome_options.add_argument("--headless")  # No Browser
    service = Service(r'\\GPSX2\C$\Users\GPSX2\Desktop\SYSTEM\MDC\chromedriver-win64\chromedriver-win64\chromedriver.exe')
    driver = webdriver.Chrome(service=service, options=chrome_options)
    return driver

# Function to connect to MySQL database
def create_connection():
    try:
        connection = mysql.connector.connect(
            host='localhost',
            database='mdc',
            user='root',
            password='',
            connection_timeout=300  # Increase timeout to 300 seconds
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
        # Check if the table already exists
        cursor.execute("SHOW TABLES LIKE 'devices'")
        result = cursor.fetchone()

        if result:
            print_message("Table 'devices' already exists.")
        else:
            create_table_query = '''
            CREATE TABLE devices (
                id INT AUTO_INCREMENT PRIMARY KEY,
                target_name VARCHAR(255) UNIQUE,
                type VARCHAR(255) NOT NULL,
                license_plate_no VARCHAR(255) NOT NULL,
                speed_limit FLOAT NOT NULL,
                latitude DOUBLE NOT NULL, 
                longitude DOUBLE NOT NULL,
                speed FLOAT NOT NULL,
                direction VARCHAR(255) NOT NULL,
                total_mileage FLOAT NOT NULL,
                status VARCHAR(255) NOT NULL,
                position_time DATETIME NOT NULL,
                address VARCHAR(255) NOT NULL,
                cut_address VARCHAR(255) NOT NULL,
                gps_id VARCHAR(255) NOT NULL,
                equipment_type VARCHAR(255) NOT NULL,
                conduction_sticker VARCHAR(255) NOT NULL,
                tag VARCHAR(255) NOT NULL,
                specs TEXT NOT NULL, 
                physical_status TEXT NOT NULL,
                assignment TEXT NOT NULL,
                date_transferred TEXT NOT NULL,
                days_contract INT(255) NOT NULL,
                date_ended TEXT NOT NULL,
                days_elapsed INT(255) NOT NULL,
                remarks TEXT NOT NULL,
                days_no_gps INT(255),
                last_assignment TEXT NOT NULL,
                last_days_contract INT(255) NOT NULL,
                last_date_transferred TEXT NOT NULL,
                last_date_ended TEXT NOT NULL,
                last_days_elapsed INT(255) NOT NULL,
                operator TEXT NOT NULL
            )
            '''
            cursor.execute(create_table_query)
            connection.commit()
            print_message("Table 'devices' created successfully.")
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

#Function to get the cut addresses
def extract_city_state(address):
    try:
        # Split the address into components
        components = address.split(',')
        if len(components) >= 2:
            city = components[-4].strip()  # Second last component is usually the city
            state = components[-3].strip()  # Last component is usually the state/province
            return f"{city}, {state}"
    except Exception as e:
        print_message(f"Error extracting city and state: {e}")
    return "City/State not found"

# Function to determine equipment type based on target_name
def determine_equipment_type(target_name):
    if "SLD" in target_name and "*" not in target_name:
        return "Selfloader"
    elif "BT" in target_name and "*" not in target_name:
        return "Boomtruck"
    elif "AK-" in target_name and "*" not in target_name:
        return "GPS Tracker"
    elif "CV" in target_name and "*" not in target_name:
        return "Closed Van"
    elif "H2O" in target_name and "*" not in target_name:
        return "Water Truck"
    if "MDT" in target_name and "*" not in target_name:
        return "Mini Dumptruck"
    elif "DT" in target_name and "*"  not in target_name:
        return "Dumptruck"
    elif "RR" in target_name and "*" not in target_name:
        return "Road Roller"
    elif "S -" in target_name and "*" not in target_name:  
        return "Service"
    elif "SKD" in target_name and "*" not in target_name:
        return "Skid Loader"
    elif "WLD" in target_name and "*" not in target_name:
        return "Wheelloader"
    elif "CMT" in target_name and "*" not in target_name:
        return "Concrete Mixer Truck"
    elif "CRN" in target_name and "*" not in target_name:
        return "Crane"
    elif "G -" in target_name and "*" not in target_name:
        return "Grader"
    elif "MBH" in target_name and "*" not in target_name:
        return "Mini Backhoe"
    elif "P " in target_name and "*" not in target_name:
        return "Pumpcrete"
    elif "MRR" in target_name and "*" not in target_name:
        return "Mini Road Roller"
    elif "ST" in target_name and "*" not in target_name:
        return "Saddam Truck"
    elif "SD -" in target_name and "*" not in target_name:
        return "Vehicle/Equipment Sold"
    elif "TH" in target_name and "*" not in target_name:
        return "Tractor Head"
    elif "*" in target_name:
        return "GPS Device not Working"
    
    # Add more conditions for other equipment types as needed
    return "Not Specified Yet"

def create_duplicates_table(connection):
    try:
        cursor = connection.cursor()
        cursor.execute("SHOW TABLES LIKE 'duplicates'")
        result = cursor.fetchone()

        if result:
            print_message("Table 'duplicates' already exists.")
        else:
            create_table_query = '''
            CREATE TABLE duplicates (
                id INT AUTO_INCREMENT PRIMARY KEY,
                target_name VARCHAR(255),
                similar_name VARCHAR(255),
                similarity FLOAT,
                detected_at DATETIME DEFAULT CURRENT_TIMESTAMP
            )
            '''
            cursor.execute(create_table_query)
            connection.commit()
            print_message("Table 'duplicates' created successfully.")
    except Error as e:
        print_message(f"Error creating duplicates table: {e}")

# Function to check for lookalike duplicates
def check_for_lookalikes(cursor, target_name):
    cursor.execute("SELECT target_name FROM devices")
    existing_names = [row[0] for row in cursor.fetchall()]
    
    for name in existing_names:
        similarity = fuzz.ratio(target_name, name)
        if similarity > 95:  # You can adjust the threshold as needed
            print_message(f"Lookalike found: '{target_name}' is similar to '{name}' with a similarity of {similarity}%.")
            return True
    return False

def insert_duplicate(cursor, target_name, similar_name, similarity):
    insert_query = '''
    INSERT INTO duplicates (target_name, similar_name, similarity)
    VALUES (%s, %s, %s)
    '''
    parameters = (target_name, similar_name, similarity)
    cursor.execute(insert_query, parameters)
    print_message(f"Inserted duplicate: '{target_name}' is similar to '{similar_name}' with similarity {similarity}%.")

def cleanup_duplicates(connection):
    try:
        cursor = connection.cursor()
        delete_query = '''
        DELETE FROM duplicates
        WHERE target_name NOT IN (SELECT target_name FROM devices)
        '''
        cursor.execute(delete_query)
        connection.commit()
        print_message("Cleaned up duplicates that no longer exist in devices.")
    except Error as e:
        print_message(f"Error cleaning up duplicates: {e}")    
    
# Modify the insert_or_update_data function
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
            print_message(f"Error converting geocode for '{device_data[0]}'.")
            return False  # Indicate failure
        
        if not (-90 <= latitude <= 90) or not (-180 <= longitude <= 180):
            print_message("Invalid latitude or longitude.")
            return False  # Indicate failure
        
        address = get_address_from_coordinates(latitude, longitude)
        last_known_address = address if "Error" not in address else last_known_address

        # Extract city and state/province
        cut_address = extract_city_state(address)

        # Determine equipment type based on target_name
        equipment_type = determine_equipment_type(device_data[0])

        # Extract license_plate_no from target_name
        if '-' in device_data[0]:
            license_plate_no = device_data[0].split('-')[1].strip()  # Get the part after the dash and whitespace
        else:
            license_plate_no = "N/A"  # Default value if no dash is found

        # Check if the record already exists
        check_query = "SELECT COUNT(*), position_time FROM devices WHERE target_name = %s"
        cursor.execute(check_query, (device_data[0],))
        result = cursor.fetchone()
        exists = result[0] > 0
        last_position_time = result[1] if exists else None

        # Calculate days_no_gps
        if last_position_time:
            last_position_time = last_position_time.replace(tzinfo=None)  # Remove timezone info if present
            current_time = datetime.now()
            days_no_gps = (current_time - last_position_time).days
        else:
            days_no_gps = 0  # Set to 0 if there is no previous position time

        if exists:
            # Update existing record
            insert_query = '''
            UPDATE devices SET
                type = %s,
                license_plate_no = %s,
                speed_limit = %s,
                latitude = %s,
                longitude = %s,
                speed = %s,
                direction = %s,
                total_mileage = %s,
                status = %s,
                position_time = %s,
                address = %s,
                cut_address = %s,  -- Update cut_address
                equipment_type = %s,
                days_no_gps = %s
            WHERE target_name = %s
            '''
            # Ensure the number of parameters matches the placeholders
            parameters = [device_data[1], license_plate_no, device_data[2], device_data[4], device_data[5], device_data[6], device_data[7], device_data[8], device_data[9], device_data[10], address, cut_address, equipment_type, days_no_gps, device_data[0]]
            cursor.execute(insert_query, parameters)
            print_message(f"Updated record for {device_data[0]}.")
        else:
            # Insert new record
            insert_query = '''
            INSERT INTO devices (target_name, type, license_plate_no, speed_limit, latitude, longitude, speed, direction, total_mileage, status, position_time, address, cut_address, equipment_type, days_no_gps)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            '''
            parameters = [device_data[0], device_data[1], license_plate_no, device_data[2], device_data[4], device_data[5], device_data[6], device_data[7], device_data[8], device_data[9], device_data[10], address, cut_address, equipment_type, days_no_gps]
            cursor.execute(insert_query, parameters)
            print_message(f"Inserted new record for {device_data[0]}.")

        # Call cleanup function after insert/update
        cleanup_duplicates(connection)

        return True  # Indicate success
    except Error as e:
        print_message(f"Error inserting/updating data: {e}")
        return False  # Indicate failure

# Function to scrape data from the page
def scrape_data(driver, url):
    try:
        driver.get(url)
    except TimeoutException:
        print_message("Page took too long to load. Retrying...")
        driver.get(url)  # Retry loading the page

    try:
        wait = WebDriverWait(driver, 30, ignored_exceptions=(NoSuchElementException, StaleElementReferenceException))
        wait.until(EC.presence_of_element_located((By.ID, 'pageShowFrame_Map')))
        iframe = driver.find_element(By.ID, 'pageShowFrame_Map')
        driver.switch_to.frame(iframe)
    except Exception as e:
        print_message(f"Error waiting for iframe: {e}")
        return []

    try:
        wait.until(EC.presence_of_element_located((By.ID, 'divDevicesList')))
    except Exception as e:
        print_message(f"Error waiting for div 'divDevicesList': {e}")
        return []

    try:
        div_devices_list = driver.find_element(By.ID, 'divDevicesList')
        div_devices_list_info = div_devices_list.find_element(By.ID, 'divDevicesListInfo')
    except Exception as e:
        print_message(f"Error finding 'divDevicesListInfo': {e}")
        return []

    # Wait for the table to be present within 'divDevicesListInfo'
    try:
        wait.until(EC.presence_of_element_located((By.TAG_NAME, 'table')))  # Wait for the table to be present
        table = div_devices_list_info.find_element(By.TAG_NAME, 'table')  # Find the first table within the div
        print_message("Data for scraping found. Scraping...")
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

    while True:
        driver = initialize_driver()
        connection = create_connection()
        create_table(connection)
        create_duplicates_table(connection)

        url = 'https://en.aika168.com/index.aspx'  # Replace with the actual URL

        # Automated login
        try:
            driver.get(url)
        except TimeoutException:
            print_message("Page took too long to load. Retrying...")
            driver.get(url)  # Retry loading the page
        try:
            print_message("Waiting for iframe...")
            WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.ID, 'ifm')))
            
            # Switch to the iframe
            driver.switch_to.frame('ifm')

            print_message("Waiting for username field...")
            WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.ID, 'txtUserName')))
            username_field = driver.find_element(By.ID, 'txtUserName')  # Correct ID for username
            password_field = driver.find_element(By.ID, 'txtAccountPassword')  # Correct ID for password
            login_button = driver.find_element(By.ID, 'btnLoginAccount')  # ID for the login button

            # Enter username and password
            print_message("Entering username and password...")
            username_field.send_keys('mdc quirino')  # Replace with your actual username
            password_field.send_keys('080808')  # Replace with your actual password

            # Click the login button
            print_message("Clicking the login button...")
            login_button.click()

            # Switch back to the default content
            driver.switch_to.default_content()

            # Wait for the page to load after login
            print_message("Waiting for the page to load after login...")

            time.sleep(10)  # Wait for the page to load
            driver.get("https://en.aika168.com/index.aspx")
            print_message("Login successful.")

            # Switch to the iframe again to scrape data
            driver.switch_to.frame('pageShowFrame_Map')

            start_time = time.time()  # Record the start time

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
                    current_time = datetime.now().strftime('%Y-%m-%d %I:%M:%S %p')  # 12-hour format with AM/PM
                    elapsed_time = time.time() - start_time  # Calculate elapsed time
                    elapsed_time_str = time.strftime("%H:%M:%S", time.gmtime(elapsed_time))  # Format elapsed time
                    print_message(f"Successfully processed {successful_updates} records at {current_time}. Elapsed time: {elapsed_time_str}.")
                    print_message(f"Ready for Scraping...")
                else:
                    print_message("No records were processed.")
                    print_message(f"Ready for Scraping...")

                # Wait for 180 seconds before the next scrape
                time.sleep(600)

        except requests.exceptions.HTTPError as e:
            print_message(f"HTTP error occurred: {e}. Restarting the program...")
            continue  # Restart

        except Exception as e:
            print_message(f"Error during login: {e}")
            driver.quit()
            return

    driver.quit()
    if connection.is_connected():
        connection.close()
        print_message("MySQL connection closed.")

if __name__ == "__main__":
    main()
