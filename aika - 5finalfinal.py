import os
import sys
import time
import signal
import requests
from requests.exceptions import HTTPError, ConnectionError, Timeout
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import (
    TimeoutException,
    NoSuchElementException,
    StaleElementReferenceException,
    WebDriverException,
    ElementClickInterceptedException
)
import mysql.connector
from mysql.connector import Error
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

# Global variables
line_count = 0
last_known_address = "No address available"
shutdown_flag = False

# Signal handler for graceful shutdown
def signal_handler(sig, frame):
    global shutdown_flag
    logging.info("Shutdown signal received. Initiating graceful shutdown...")
    shutdown_flag = True

signal.signal(signal.SIGINT, signal_handler)
signal.signal(signal.SIGTERM, signal_handler)

# Function to restart the script
def restart_script():
    logging.info("Restarting script due to critical error...")
    time.sleep(5)  # Brief pause to allow resources to close
    python = sys.executable
    os.execl(python, python, *sys.argv)

# Function to clear the console using ANSI escape codes
def clear_console():
    global line_count
    print("\033[H\033[J", end="")
    line_count = 0

# Function to print messages and manage line count
def print_message(message):
    global line_count
    print(message)
    logging.info(message)
    line_count += 1
    if line_count >= 100:
        clear_console()

# Function to check internet connection
def check_internet_connection():
    try:
        requests.get("http://www.google.com", timeout=10)
        return True
    except (ConnectionError, Timeout):
        logging.error("Internet connection check failed.")
        return False

# Function to initialize the WebDriver
def initialize_driver():
    chrome_options = Options()
    chrome_options.add_argument("--disable-extensions")
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--start-maximized")
    chrome_options.add_argument("--headless")
    service = Service(r'\\GPSX2\C$\Users\GPSX2\Desktop\SYSTEM\MDC\chromedriver-win64\chromedriver-win64\chromedriver.exe')
    driver = webdriver.Chrome(service=service, options=chrome_options)
    print_message("WebDriver initialized successfully.")
    return driver

# Function to connect to MySQL database
def create_connection():
    try:
        connection = mysql.connector.connect(
            host='localhost',
            database='mdc',
            user='root',
            password='',
            connection_timeout=300
        )
        if connection.is_connected():
            print_message("Connected to MySQL database")
            return connection
    except Error as e:
        logging.error(f"Failed to connect to database: {e}")
        return None

# Function to send an email notification
def send_email_notification(to_email, subject, message, smtp_server, smtp_port, smtp_user, smtp_password):
    msg = MIMEText(message)
    msg['From'] = smtp_user
    msg['To'] = to_email
    msg['Subject'] = subject

    try:
        with smtplib.SMTP(smtp_server, smtp_port, timeout=30) as server:
            server.starttls()
            server.login(smtp_user, smtp_password)
            server.sendmail(smtp_user, [to_email], msg.as_string())
            print_message("Email sent successfully!")
    except Exception as e:
        logging.error(f"Failed to send email: {e}")
        print_message(f"Failed to send email: {e}")

# Function to create the devices table
def create_table(connection):
    if not connection:
        return
    cursor = connection.cursor()
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
            days_contract INT NOT NULL,
            date_ended TEXT NOT NULL,
            days_elapsed INT NOT NULL,
            remarks TEXT NOT NULL,
            days_no_gps INT,
            last_assignment TEXT NOT NULL,
            last_days_contract INT NOT NULL,
            last_date_transferred TEXT NOT NULL,
            last_date_ended TEXT NOT NULL,
            last_days_elapsed INT NOT NULL,
            operator TEXT NOT NULL
        )
        '''
        cursor.execute(create_table_query)
        connection.commit()
        print_message("Table 'devices' created successfully.")

# Function to get address from coordinates
def get_address_from_coordinates(latitude, longitude):
    geolocator = Nominatim(user_agent="myGeocoder")
    retries = 3
    for attempt in range(retries):
        try:
            location = geolocator.reverse((latitude, longitude), exactly_one=True, timeout=10)
            if location:
                return location.address
            else:
                return "Address not found"
        except Exception as e:
            logging.error(f"Reverse geocoding error (attempt {attempt + 1}/{retries}): {e}")
            time.sleep(2)
    return "Error in geocoding"

# Function to extract city and state
def extract_city_state(address):
    try:
        components = address.split(',')
        if len(components) >= 4:
            city = components[-4].strip()
            state = components[-3].strip()
            return f"{city}, {state}"
        return "City/State not found"
    except Exception:
        return "City/State not found"

# Function to determine equipment type
def determine_equipment_type(target_name):
    if not isinstance(target_name, str) or not target_name.strip():
        return "Not Specified Yet"
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
    elif "MDT" in target_name and "*" not in target_name:
        return "Mini Dumptruck"
    elif "DT" in target_name and "*" not in target_name:
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
    return "Not Specified Yet"

# Function to create duplicates table
def create_duplicates_table(connection):
    if not connection:
        return
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

# Function to check for lookalike duplicates
def check_for_lookalikes(cursor, target_name):
    try:
        cursor.execute("SELECT target_name FROM devices")
        existing_names = [row[0] for row in cursor.fetchall()]
        for name in existing_names:
            similarity = fuzz.ratio(target_name, name)
            if similarity > 95:
                print_message(f"Lookalike found: '{target_name}' is similar to '{name}' with a similarity of {similarity}%.")
                return True
        return False
    except Exception as e:
        logging.error(f"Error checking lookalikes: {e}")
        return False

# Function to insert duplicate
def insert_duplicate(cursor, target_name, similar_name, similarity):
    try:
        insert_query = '''
        INSERT INTO duplicates (target_name, similar_name, similarity)
        VALUES (%s, %s, %s)
        '''
        parameters = (target_name, similar_name, similarity)
        cursor.execute(insert_query, parameters)
        print_message(f"Inserted duplicate: '{target_name}' is similar to '{similar_name}' with similarity {similarity}%.")
    except Error as e:
        logging.error(f"Error inserting duplicate: {e}")

# Function to cleanup duplicates
def cleanup_duplicates(connection):
    if not connection:
        return
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
        logging.error(f"Error cleaning up duplicates: {e}")

# Function to safely convert to float
def safe_float(value, default=0.0):
    try:
        return float(value) if value.strip() else default
    except (ValueError, AttributeError):
        return default

# Function to insert or update data
def insert_or_update_data(connection, device_data):
    global last_known_address
    if not connection or not connection.is_connected():
        print_message("Database connection lost.")
        return False

    try:
        if len(device_data) < 11:
            print_message("Device data is incomplete.")
            return False

        target_name = device_data[0].strip()
        if not target_name:
            print_message("Empty target_name encountered. Skipping record.")
            return False

        latitude = safe_float(device_data[4])
        longitude = safe_float(device_data[5])
        if latitude == 0.0 and longitude == 0.0:
            print_message(f"Invalid geocode for '{target_name}'. Skipping record.")
            return False
        if not (-90 <= latitude <= 90) or not (-180 <= longitude <= 180):
            print_message(f"Invalid latitude or longitude for '{target_name}'. Skipping record.")
            return False

        address = get_address_from_coordinates(latitude, longitude)
        last_known_address = address if "Error" not in address else last_known_address

        cut_address = extract_city_state(address)
        equipment_type = determine_equipment_type(target_name)
        license_plate_no = target_name.split('-')[1].strip() if '-' in target_name else "N/A"

        cursor = connection.cursor()
        check_query = "SELECT COUNT(*), position_time FROM devices WHERE target_name = %s"
        cursor.execute(check_query, (target_name,))
        result = cursor.fetchone()
        exists = result[0] > 0
        last_position_time = result[1] if exists else None

        days_no_gps = (datetime.now() - last_position_time.replace(tzinfo=None)).days if last_position_time else 0

        if exists:
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
                cut_address = %s,
                equipment_type = %s,
                days_no_gps = %s
            WHERE target_name = %s
            '''
            parameters = [
                device_data[1], license_plate_no, safe_float(device_data[2]),
                latitude, longitude, safe_float(device_data[6]), device_data[7],
                safe_float(device_data[8]), device_data[9], device_data[10],
                address, cut_address, equipment_type, days_no_gps, target_name
            ]
            cursor.execute(insert_query, parameters)
            print_message(f"Updated record for {target_name}.")
        else:
            insert_query = '''
            INSERT INTO devices (
                target_name, type, license_plate_no, speed_limit, latitude, longitude, speed,
                direction, total_mileage, status, position_time, address, cut_address,
                equipment_type, days_no_gps, gps_id, conduction_sticker, tag, specs,
                physical_status, assignment, date_transferred, days_contract,
                date_ended, days_elapsed, remarks, last_assignment, last_days_contract,
                last_date_transferred, last_date_ended, last_days_elapsed, operator
            )
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            '''
            parameters = [
                target_name, device_data[1], license_plate_no, safe_float(device_data[2]),
                latitude, longitude, safe_float(device_data[6]), device_data[7],
                safe_float(device_data[8]), device_data[9], device_data[10], address,
                cut_address, equipment_type, days_no_gps, "", "", "", "", "", "", "", 0,
                "", 0, "", "", 0, "", "", 0, ""
            ]
            cursor.execute(insert_query, parameters)
            print_message(f"Inserted new record for {target_name}.")

        connection.commit()
        return True
    except Exception as e:
        logging.error(f"Error processing record for '{target_name}' : {e}")
        print_message(f"Error processing record for '{target_name}' : {e}")
        return False

# Function to scrape data (from aika - 4final.py)
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

# Function to check if already logged in
def is_logged_in(driver, url):
    try:
        driver.get(url)
        wait = WebDriverWait(driver, 10, ignored_exceptions=(NoSuchElementException, StaleElementReferenceException))
        # Check for a post-login element (e.g., logout button or dashboard element)
        try:
            wait.until(EC.presence_of_element_located((By.ID, 'pageShowFrame_Map')))
            print_message("Detected logged-in state (pageShowFrame_Map found).")
            return True
        except TimeoutException:
            # Alternatively, check if login page elements are absent
            driver.switch_to.default_content()
            try:
                driver.find_element(By.ID, 'ifm')
                print_message("Login iframe found, not logged in.")
                return False
            except NoSuchElementException:
                print_message("No login iframe found, assuming logged in.")
                return True
    except Exception as e:
        logging.error(f"Error checking login status: {e}")
        print_message(f"Error checking login status: {e}")
        return False

# Function to perform login
def perform_login(driver, url, max_retries=3):
    for attempt in range(1, max_retries + 1):
        try:
            print_message(f"Login attempt {attempt}/{max_retries}")
            driver.get(url)
            print_message("Waiting for login iframe...")
            WebDriverWait(driver, 30).until(EC.presence_of_element_located((By.ID, 'ifm')))
            driver.switch_to.frame('ifm')
            print_message("Waiting for username field...")
            WebDriverWait(driver, 30).until(EC.presence_of_element_located((By.ID, 'txtUserName')))
            
            username_field = driver.find_element(By.ID, 'txtUserName')
            password_field = driver.find_element(By.ID, 'txtAccountPassword')
            login_button = driver.find_element(By.ID, 'btnLoginAccount')

            print_message("Entering username and password...")
            username_field.clear()
            username_field.send_keys('mdc quirino')
            password_field.clear()
            password_field.send_keys('080808')
            
            print_message("Waiting for login button to be clickable...")
            WebDriverWait(driver, 30).until(EC.element_to_be_clickable((By.ID, 'btnLoginAccount')))
            print_message("Clicking login button...")
            try:
                login_button.click()
            except (ElementClickInterceptedException, WebDriverException):
                print_message("Standard click failed, attempting JavaScript click...")
                driver.execute_script("arguments[0].click();", login_button)
            
            driver.switch_to.default_content()
            print_message("Waiting for page to load after login...")
            try:
                # Wait for post-login element with short timeout
                WebDriverWait(driver, 15).until(EC.presence_of_element_located((By.ID, 'pageShowFrame_Map')))
                print_message("Login successful (pageShowFrame_Map found).")
                return True
            except TimeoutException:
                print_message("Post-login page load timed out, checking if logged in...")
                if is_logged_in(driver, url):
                    print_message("Confirmed logged in despite page load issue.")
                    return True
                else:
                    raise TimeoutException("Login page load failed and not logged in.")
        except Exception as e:
            logging.error(f"Login attempt {attempt}/{max_retries} failed: {e}")
            print_message(f"Login attempt {attempt}/{max_retries} failed: {e}")
            if attempt < max_retries:
                print_message("Retrying login in 10 seconds...")
                time.sleep(10)
                driver.switch_to.default_content()
            else:
                raise Exception(f"Login failed after {max_retries} attempts: {e}")
    return False

# Main function
def main():
    global shutdown_flag
    
    TO_EMAIL = 'maxiprodc.gps1@gmail.com'
    SMTP_SERVER = 'smtp.gmail.com'
    SMTP_PORT = 587
    SMTP_USER = 'maxiprodc.gps1@gmail.com'
    SMTP_PASSWORD = 'gosc bvup dtpq zpsv'

    driver = None
    connection = None

    try:
        driver = initialize_driver()
        if not driver:
            raise WebDriverException("Failed to initialize WebDriver")
        
        connection = create_connection()
        if not connection:
            raise Error("Failed to connect to database")
        
        create_table(connection)
        create_duplicates_table(connection)

        url = 'https://en.aika168.com/index.aspx'

        # Check if already logged in
        if is_logged_in(driver, url):
            print_message("Already logged in, skipping login.")
        else:
            # Perform login
            perform_login(driver, url)

        start_time = time.time()

        while not shutdown_flag:
            if not check_internet_connection():
                print_message(f"No internet connection. Last known address: {last_known_address}")
                time.sleep(5)
                continue

            device_data_list = scrape_data(driver, url)
            if not device_data_list:
                print_message("No data scraped. Checking login status...")
                if not is_logged_in(driver, url):
                    print_message("Session expired, re-logging in...")
                    perform_login(driver, url)
                continue
            
            successful_updates = 0
            for device_data in device_data_list:
                if insert_or_update_data(connection, device_data):
                    successful_updates += 1

            if successful_updates > 0:
                current_time = datetime.now().strftime('%Y-%m-%d %I:%M:%S %p')
                elapsed_time = time.time() - start_time
                elapsed_time_str = time.strftime("%H:%M:%S", time.gmtime(elapsed_time))
                print_message(f"Successfully processed {successful_updates} records at {current_time}. Elapsed time: {elapsed_time_str}.")
            else:
                print_message("No records were processed.")
            
            print_message("Ready for Scraping...")
            cleanup_duplicates(connection)
            
            for _ in range(600):
                if shutdown_flag:
                    break
                time.sleep(1)

    except Exception as e:
        error_message = f"Critical error, restarting script: {e}"
        logging.error(error_message)
        print_message(error_message)
        send_email_notification(TO_EMAIL, "AIKA Scraper - Critical Error", error_message, SMTP_SERVER, SMTP_PORT, SMTP_USER, SMTP_PASSWORD)
        
        # Cleanup resources
        if driver:
            try:
                driver.quit()
            except:
                pass
        if connection:
            try:
                connection.close()
            except:
                pass
        
        if not shutdown_flag:
            restart_script()
        else:
            print_message("Shutting down gracefully...")
            sys.exit(0)

    finally:
        # Final cleanup
        if driver:
            try:
                driver.quit()
            except:
                pass
        if connection:
            try:
                connection.close()
            except:
                pass
        if shutdown_flag:
            print_message("Program terminated.")
            sys.exit(0)

if __name__ == "__main__":
    main()
