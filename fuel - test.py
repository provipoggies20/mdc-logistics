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
import smtplib
from email.mime.text import MIMEText

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
    #chrome_options.add_argument("--headless")  # No Browser
    service = Service(r'\\GPSX1\C$\Users\ADMIN\Desktop\SYSTEM\MDC\chromedriver-win64\chromedriver-win64\chromedriver.exe')
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

# Function to send an email notification
def send_email_notification(to_email, subject, message, smtp_server, smtp_port, smtp_user, smtp_password):
    msg = MIMEText(message)
    msg['From'] = smtp_user
    msg['To'] = to_email
    msg['Subject'] = subject

    try:
        with smtplib.SMTP(smtp_server, smtp_port) as server:
            server.starttls()
            server.login(smtp_user, smtp_password)
            server.sendmail(smtp_user, [to_email], msg.as_string())
            print("Email sent successfully!")
    except Exception as e:
        print(f"Failed to send email: {e}")

# Function to create the devices table if it doesn't exist
def create_table(connection):
    try:
        cursor = connection.cursor()
        # Check if the table already exists
        cursor.execute("SHOW TABLES LIKE 'fuel'")
        result = cursor.fetchone()

        if result:
            print_message("Table 'fuel' already exists.")
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
    # Define your SMS gateway details
    TO_EMAIL = 'maxiprodc.gps1@gmail.com'  # Replace with your email address
    SMTP_SERVER = 'smtp.gmail.com'  # Your SMTP server
    SMTP_PORT = 587  # Common port for TLS
    SMTP_USER = 'maxiprodc.gps1@gmail.com'  # Your email address
    SMTP_PASSWORD = 'gosc bvup dtpq zpsv'  # Your email password

    while True:
        driver = initialize_driver()
        connection = create_connection()
        create_table(connection)
        create_duplicates_table(connection)

        url = 'https://en.aika168.com/index.aspx'  # Replace with the actual URL

        # Automated login
        try:
            driver.get(url)
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

                # Call cleanup function after insert/update
                cleanup_duplicates(connection)

                # Wait for 600 seconds before the next scrape
                time.sleep(600)

        except requests.exceptions.HTTPError as e:
            print_message(f"HTTP error occurred: {e}. Restarting the program...")
            continue  # Restart

        except Exception as e:
            error_message = f"An error occurred: {e}"
            print_message(error_message)
            send_email_notification(TO_EMAIL, "AIKA Scraper - Error Notification", error_message, SMTP_SERVER, SMTP_PORT, SMTP_USER, SMTP_PASSWORD)
            driver.quit()  # Ensure the driver is closed on error
            break  # Exit the loop on error

    driver.quit()
    if connection.is_connected():
        connection.close()
        print_message("MySQL connection closed.")

if __name__ == "__main__":
    main()
