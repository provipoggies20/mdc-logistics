from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from bs4 import BeautifulSoup
import mysql.connector
from mysql.connector import Error
import time
from selenium.common.exceptions import StaleElementReferenceException  # Import the exception

# Function to initialize the WebDriver
def initialize_driver():
    chrome_options = Options()
    chrome_options.add_argument("--disable-extensions")
    service = Service(r'C:\Users\ADMIN\Desktop\SYSTEM\chromedriver-win64\chromedriver-win64\chromedriver.exe')  # Update with the correct path
    driver = webdriver.Chrome(service=service, options=chrome_options)
    return driver

# Function to connect to MySQL database
def create_connection():
    try:
        connection = mysql.connector.connect(
            host='localhost',  # Update with your host
            database='mdc',  # Update with your database name
            user='root',  # Update with your MySQL username
            password=''  # Update with your MySQL password
        )
        if connection.is_connected():
            print("Connected to MySQL database")
            return connection
    except Error as e:
        print(f"Error: {e}")
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
            position_time DATETIME
        )
        '''
        cursor.execute(create_table_query)
        connection.commit()
        print("Table 'devices' created or already exists.")
    except Error as e:
        print(f"Error creating table: {e}")

# Function to insert or update data in the MySQL database
def insert_or_update_data(connection, device_data):
    try:
        cursor = connection.cursor()
        # Check if the target_name already exists
        select_query = "SELECT COUNT(*) FROM devices WHERE target_name = %s"
        cursor.execute(select_query, (device_data[0],))
        count = cursor.fetchone()[0]

        if count > 0:
            # Update existing record
            update_query = '''
            UPDATE devices
            SET type = %s, license_plate_no = %s, speed_limit = %s, latitude = %s,
                longitude = %s, speed = %s, direction = %s, total_mileage = %s,
                status = %s, position_time = %s
            WHERE target_name = %s
            '''
            cursor.execute(update_query, (*device_data[1:], device_data[0]))  # Update with the new values
            print(f"Updated existing record for target_name: {device_data[0]}")
        else:
            # Insert new record
            insert_query = '''
            INSERT INTO devices (target_name, type, license_plate_no, speed_limit, latitude, longitude, speed, direction, total_mileage, status, position_time)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            '''
            cursor.execute(insert_query, device_data)
            print(f"Inserted new record for target_name: {device_data[0]}")

        connection.commit()
    except Error as e:
        print(f"Error inserting/updating data: {e}")

# Function to scrape data from the page
def scrape_data(driver, url):
    driver.get(url)

    # Wait for the iframe to be present and switch to it
    try:
        wait = WebDriverWait(driver, 30)  # Wait up to 30 seconds
        wait.until(EC.presence_of_element_located((By.ID, 'pageShowFrame_Map')))  # Wait for the iframe to be present
        iframe = driver.find_element(By.ID, 'pageShowFrame_Map')  # Locate the iframe
        driver.switch_to.frame(iframe)  # Switch to the iframe
        print("Switched to iframe 'pageShowFrame_Map'.")
    except Exception as e:
        print(f"Error waiting for iframe: {e}")
        return []

    # Wait for the div 'divDevicesList' to be present
    try:
        wait.until(EC.presence_of_element_located((By.ID, 'divDevicesList')))  # Wait for the div to be present
        print("Div 'divDevicesList' found.")
    except Exception as e:
        print(f"Error waiting for div 'divDevicesList': {e}")
        return []

    # Now, find the div 'divDevicesListInfo' within 'divDevicesList'
    try:
        div_devices_list = driver.find_element(By.ID, 'divDevicesList')  # Find the div by ID
        div_devices_list_info = div_devices_list.find_element(By.ID, 'divDevicesListInfo')  # Find the nested div
        print("Div 'divDevicesListInfo' found.")
    except Exception as e:
        print(f"Error finding 'divDevicesListInfo': {e}")
        return []

    # Wait for the table to be present within 'divDevicesListInfo'
    try:
        wait.until(EC.presence_of_element_located((By.TAG_NAME, 'table')))  # Wait for the table to be present
        table = div_devices_list_info.find_element(By.TAG_NAME, 'table')  # Find the first table within the div
        print("Table found.")
    except Exception as e:
        print(f"Error finding table: {e}")
        return []

    # Extract data from the table
    data = []
    while True:  # Loop to handle stale element reference
        try:
            rows = table.find_elements(By.TAG_NAME, 'tr')  # Get all rows in the table
            for row in rows[1:]:  # Skip the header row
                cols = row.find_elements(By.TAG_NAME, 'td')  # Get all columns in the row
                row_data = [col.text.strip() for col in cols]  # Extract text from each column
                data.append(row_data)  # Append the row data to the list
            break  # Exit the loop if successful
        except StaleElementReferenceException:
            print("StaleElementReferenceException caught. Re-locating the table.")
            # Re-locate the table
            div_devices_list_info = div_devices_list.find_element(By.ID, 'divDevicesListInfo')  # Re-find the nested div
            table = div_devices_list_info.find_element(By.TAG_NAME, 'table')  # Re-find the table

    return data

# Main function to run the script
def main():
    driver = initialize_driver()
    url = 'https://en.aika168.com/'  # Update with the target URL
    connection = create_connection()
    if connection:
        create_table(connection)
        try:
            while True:  # Continuous loop
                device_data = scrape_data(driver, url)  # Only scrape data, no refresh
                if device_data:  # Check if data was returned
                    for device in device_data:
                        insert_or_update_data(connection, device)
                else:
                    print("No data found.")
                time.sleep(60)  # Wait for 60 seconds before the next scrape
        except KeyboardInterrupt:
            print("Script terminated by user.")
        finally:
            connection.close()
            driver.quit()

if __name__ == "__main__":
    main()
