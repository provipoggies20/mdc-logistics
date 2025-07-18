import os
import sys
import time
import signal
import requests
from requests.exceptions import HTTPError, ConnectionError, Timeout
import mysql.connector
from mysql.connector import Error
import imaplib
import re
import email
from email.header import decode_header
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import (
    TimeoutException, NoSuchElementException, StaleElementReferenceException,
    WebDriverException, ElementClickInterceptedException
)
from datetime import datetime
import logging
from geopy.geocoders import Nominatim
import math
import subprocess
import platform
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.core.driver_cache import DriverCacheManager
import psutil

# Get the current directory of the script
current_directory = os.path.dirname(os.path.abspath(__file__))

# Define the Logs directory path
logs_directory = os.path.join(current_directory, 'Logs')

# Ensure the Logs directory exists
os.makedirs(logs_directory, exist_ok=True)

# Define the full path for the log file
log_file_path = os.path.join(logs_directory, 'combined_scraper.log')

# Configure logging
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
CHROMEDRIVER_PATH = r'\GPSX2\C$\Users\ADMIN\GPSX2\SYSTEM\MDC\chromedriver-win64\chromedriver-win64\chromedriver.exe'
driver_komtrax = None
driver_aika = None
connection = None

# Signal handler for graceful shutdown
def signal_handler(sig, frame):
    global shutdown_flag, driver_komtrax, driver_aika, connection
    shutdown_flag = True
    logging.info(f"Shutdown signal received (signal: {sig}). Setting shutdown_flag to True.")
    print_message("Received shutdown signal. Cleaning up resources...")
    close_resources(driver_komtrax, driver_aika, connection, shutdown=True)
    print_message("Exiting script due to shutdown signal.")
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)
signal.signal(signal.SIGTERM, signal_handler)

# Function to clear the console
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

# Function to get Chrome browser version
def get_chrome_version():
    try:
        result = subprocess.run(['google-chrome', '--version'], capture_output=True, text=True, check=True)
        version = result.stdout.strip()
        match = re.search(r'Google Chrome (\d+)\.\d+\.\d+\.\d+', version)
        if match:
            return match.group(1)
        print_message("Could not parse Chrome version from command output.")
    except (subprocess.SubprocessError, FileNotFoundError):
        print_message("Failed to get Chrome version via command, trying Selenium...")
        try:
            options = Options()
            options.add_argument("--headless")
            driver = webdriver.Chrome(options=options)
            version = driver.capabilities['browserVersion']
            driver.quit()
            match = re.search(r'(\d+)\.\d+\.\d+\.\d+', version)
            if match:
                return match.group(1)
            print_message("Could not parse Chrome version from Selenium.")
        except Exception as e:
            print_message(f"Failed to get Chrome version via Selenium: {e}")
    return None

# Function to get ChromeDriver version
def get_chromedriver_version(driver_path):
    if not os.path.exists(driver_path):
        print_message(f"ChromeDriver not found at {driver_path}.")
        return None
    try:
        result = subprocess.run([driver_path, '--version'], capture_output=True, text=True, check=True)
        version = result.stdout.strip()
        match = re.search(r'ChromeDriver (\d+)\.\d+\.\d+\.\d+', version)
        if match:
            return match.group(1)
        print_message("Could not parse ChromeDriver version.")
    except (subprocess.SubprocessError, FileNotFoundError) as e:
        print_message(f"Failed to get ChromeDriver version: {e}")
    return None

# Function to check if WebDriver is usable
def is_driver_usable(driver):
    if driver is None:
        return False
    try:
        driver.execute_script("return true;")
        return True
    except Exception:
        return False

# Function to check if database connection is active
def is_connection_active(connection):
    if connection is None:
        return False
    try:
        if connection.is_connected():
            connection.ping(reconnect=True, attempts=3, delay=1)
            return True
        return False
    except Exception as e:
        print_message(f"Database connection check failed: {e}")
        return False

# Function to initialize the WebDriver
def initialize_driver():
    chrome_options = Options()
    chrome_options.add_argument("--disable-extensions")
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--start-maximized")
    chrome_options.add_argument("--headless")
    
    # Detect OS and architecture
    os_type = platform.system().lower()
    architecture = platform.architecture()[0]
    if os_type != 'windows':
        raise Exception(f"Unsupported OS: {os_type}. This script is configured for Windows.")
    chrome_driver_os = 'win64' if architecture == '64bit' else 'win32'
    print_message(f"Detected OS: {os_type}, Architecture: {architecture}, Using ChromeDriver: {chrome_driver_os}")
    
    chrome_version = get_chrome_version()
    driver_version = get_chromedriver_version(CHROMEDRIVER_PATH)
    
    # Configure webdriver-manager to use official Google ChromeDriver source and save to CHROMEDRIVER_PATH
    driver_dir = os.path.dirname(CHROMEDRIVER_PATH)
    os.makedirs(driver_dir, exist_ok=True)
    cache_manager = DriverCacheManager(root_dir=driver_dir)
    driver_manager = ChromeDriverManager(
        cache_manager=cache_manager,
        url="https://chromedriver.storage.googleapis.com"
    )
    
    if chrome_version is None:
        print_message("Could not determine Chrome version. Attempting to download latest stable ChromeDriver.")
        try:
            driver_path = driver_manager.install()
            print_message(f"Downloaded ChromeDriver to {driver_path}.")
        except Exception as e:
            print_message(f"Failed to download ChromeDriver: {e}")
            raise
    elif not os.path.exists(CHROMEDRIVER_PATH) or (driver_version and chrome_version != driver_version):
        print_message(f"ChromeDriver at {CHROMEDRIVER_PATH} is missing or incompatible (Chrome: {chrome_version}, Driver: {driver_version}).")
        try:
            driver_path = driver_manager.install()
            print_message(f"Downloaded compatible ChromeDriver to {driver_path}.")
        except Exception as e:
            print_message(f"Failed to download ChromeDriver: {e}")
            raise
    else:
        print_message(f"Using existing ChromeDriver at {CHROMEDRIVER_PATH} (version compatible with Chrome {chrome_version}).")
        driver_path = CHROMEDRIVER_PATH
    
    try:
        service = Service(driver_path)
        driver = webdriver.Chrome(service=service, options=chrome_options)
        print_message("WebDriver initialized successfully.")
        return driver
    except Exception as e:
        print_message(f"Failed to initialize WebDriver: {e}")
        raise

# Function to terminate script-related Chrome and ChromeDriver processes
def terminate_script_processes():
    try:
        for proc in psutil.process_iter(['name', 'cmdline']):
            try:
                name = proc.info['name'].lower()
                cmdline = proc.info['cmdline']
                if name == 'chromedriver.exe' and cmdline:
                    print_message(f"Terminating ChromeDriver process (PID: {proc.pid})")
                    proc.terminate()
                    try:
                        proc.wait(timeout=5)
                    except psutil.TimeoutExpired:
                        proc.kill()
                elif name == 'chrome.exe' and cmdline:
                    is_selenium = any('--remote-debugging-port' in arg for arg in cmdline)
                    if is_selenium:
                        print_message(f"Terminating Selenium-spawned Chrome process (PID: {proc.pid})")
                        proc.terminate()
                        try:
                            proc.wait(timeout=5)
                        except psutil.TimeoutExpired:
                            proc.kill()
            except (psutil.NoSuchProcess, psutil.AccessDenied, psutil.TimeoutExpired):
                continue
    except Exception as e:
        print_message(f"Error terminating script processes: {e}")

# Function to close resources
def close_resources(driver_komtrax, driver_aika, connection, shutdown=False):
    if driver_komtrax:
        try:
            driver_komtrax.quit()
            print_message("Closed Komtrax WebDriver.")
        except Exception as e:
            print_message(f"Error closing Komtrax WebDriver: {e}")
    if driver_aika:
        try:
            driver_aika.quit()
            print_message("Closed Aika WebDriver.")
        except Exception as e:
            print_message(f"Error closing Aika WebDriver: {e}")
    if shutdown and connection and is_connection_active(connection):
        try:
            connection.close()
            print_message("Closed database connection.")
        except Exception as e:
            print_message(f"Error closing database connection: {e}")
    terminate_script_processes()

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
        print_message(f"Error: {e}")
        logging.error(f"Failed to connect to database: {e}")
        return None

# Function to create the komtrax table
def create_komtrax_table(connection):
    try:
        cursor = connection.cursor()
        cursor.execute("SHOW TABLES LIKE 'komtrax'")
        result = cursor.fetchone()
        if result:
            print_message("Table 'komtrax' already exists.")
        else:
            create_table_query = '''
            CREATE TABLE komtrax (
                id INT AUTO_INCREMENT PRIMARY KEY,
                target_name VARCHAR(255) UNIQUE,
                equipment_type VARCHAR(255) NOT NULL,
                address VARCHAR(255) NOT NULL,
                cut_address VARCHAR(255) NOT NULL,
                position_time DATETIME NOT NULL,
                latitude DOUBLE,
                longitude DOUBLE,
                tag VARCHAR(255) NOT NULL,
                specs TEXT NOT NULL, 
                physical_status TEXT NOT NULL,
                assignment TEXT NOT NULL,
                date_transferred TEXT NOT NULL,
                days_contract INT NOT NULL,
                date_ended TEXT NOT NULL,
                days_elapsed INT NOT NULL, 
                remarks TEXT NOT NULL,
                days_no_gps INT NOT NULL,
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
            print_message("Table 'komtrax' created successfully.")
    except Error as e:
        print_message(f"Error creating table: {e}")

# Function to create the devices table
def create_devices_table(connection):
    try:
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
    except Error as e:
        print_message(f"Error creating table: {e}")

# Function to create the geofence table
def create_geofence_table(connection):
    try:
        cursor = connection.cursor()
        create_table_query = '''
        CREATE TABLE IF NOT EXISTS geofence (
            id INT AUTO_INCREMENT PRIMARY KEY,
            target_name VARCHAR(255) NOT NULL,
            assignment VARCHAR(255) NOT NULL,
            status VARCHAR(255) NOT NULL,
            timestamp DATETIME NOT NULL
        )
        '''
        cursor.execute(create_table_query)
        connection.commit()
        print_message("Geofence table is ready.")
    except Error as e:
        print_message(f"Error creating table: {e}")

# Function to get address from coordinates
def get_address_from_coordinates(latitude, longitude):
    geolocator = Nominatim(user_agent="combinedScraper")
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

# Function to determine equipment type for Aika
def determine_equipment_type_aika(target_name):
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
    elif "MLT" in target_name and "*" not in target_name:
        return "Manlift"
    elif "*" in target_name:
        return "GPS Device not Working"
    return "Not Specified Yet"

# Function to determine equipment type for Komtrax
def determine_equipment_type_komtrax(target_name):
    backhoe_keywords = ["PC200", "PC210", "PC220"]
    if any(keyword in target_name for keyword in backhoe_keywords):
        return "Backhoe"
    return "Not Specified"

# Function to insert or update model data (Komtrax)
def insert_model_komtrax(connection, model_info, equipment_type, location, position_time, latitude, longitude):
    if not connection or not is_connection_active(connection):
        print_message("Database connection is lost. Skipping update.")
        return False, "Failed"
    try:
        cursor = connection.cursor()
        check_query = "SELECT COUNT(*), position_time FROM komtrax WHERE target_name = %s"
        cursor.execute(check_query, (model_info,))
        result = cursor.fetchone()
        exists = result[0] > 0
        last_position_time = result[1] if exists else None
        days_no_gps = (datetime.now() - last_position_time.replace(tzinfo=None)).days if last_position_time else 0
        insert_query = '''
        INSERT INTO komtrax (
            target_name, equipment_type, address, position_time, latitude, longitude, days_no_gps,
            cut_address, tag, specs, physical_status, assignment, date_transferred, days_contract,
            date_ended, days_elapsed, remarks, last_assignment, last_days_contract,
            last_date_transferred, last_date_ended, last_days_elapsed, operator
        )
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        ON DUPLICATE KEY UPDATE
            equipment_type = VALUES(equipment_type),
            address = VALUES(address),
            position_time = VALUES(position_time),
            latitude = VALUES(latitude),
            longitude = VALUES(longitude),
            days_no_gps = VALUES(days_no_gps)
        '''
        default_value = ""
        default_int = 0
        cursor.execute(insert_query, (
            model_info, equipment_type, location, position_time, latitude, longitude, days_no_gps,
            default_value, default_value, default_value, default_value, default_value, default_value,
            default_int, default_value, default_int, default_value, default_value, default_int,
            default_value, default_value, default_int, default_value
        ))
        connection.commit()
        if cursor.rowcount == 1:
            return True, "Inserted"
        else:
            return True, "Updated"
    except Error as e:
        print_message(f"Error inserting/updating model '{model_info}': {e}")
        return False, "Failed"

# Function to insert or update data (Aika)
def insert_or_update_data_aika(connection, device_data):
    global last_known_address
    if not connection or not is_connection_active(connection):
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
        if "*" in target_name or "AK-" in target_name:
            print_message(f"Target name '{target_name}' contains an asterisk or 'AK-'. Skipping record.")
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
        calculated_equipment_type = determine_equipment_type_aika(target_name)
        license_plate_no = target_name.split('-')[1].strip() if '-' in target_name else "N/A"
        cursor = connection.cursor()
        check_query = "SELECT COUNT(*), position_time, equipment_type FROM devices WHERE target_name = %s"
        cursor.execute(check_query, (target_name,))
        result = cursor.fetchone()
        exists = result[0] > 0
        last_position_time = result[1] if exists else None
        current_equipment_type = result[2] if exists else ""
        days_no_gps = (datetime.now() - last_position_time.replace(tzinfo=None)).days if last_position_time else 0
        equipment_type = current_equipment_type if current_equipment_type.strip() else calculated_equipment_type
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

# Function to safely convert to float
def safe_float(value, default=0.0):
    try:
        return float(value) if value.strip() else default
    except (ValueError, AttributeError):
        return default

# Function to get verification code from email
def get_verification_code(email_user, email_pass, sender_email):
    mail = imaplib.IMAP4_SSL("imap.gmail.com")
    mail.login(email_user, email_pass)
    mail.select("inbox")
    status, messages = mail.search(None, f'(FROM "{sender_email}")')
    email_ids = messages[0].split()
    if not email_ids:
        print_message(f"No verification email found from {sender_email}.")
        return None
    latest_email_id = email_ids[-1]
    status, msg = mail.fetch(latest_email_id, "(RFC822)")
    msg = email.message_from_bytes(msg[0][1])
    for part in msg.walk():
        if part.get_content_type() == "text/plain":
            body = part.get_payload(decode=True).decode()
            verification_code_match = re.search(r'\b\d{6,8}\b', body)
            if verification_code_match:
                return verification_code_match.group(0)
    print_message("Verification code not found in the email.")
    return None

# Function to login to Komtrax
def login_to_komtrax(driver, email_user, email_pass):
    try:
        driver.get("https://cfm.komtrax.komatsu/c/fm/login")
        time.sleep(10)
        email_input = driver.find_element(By.NAME, "loginfmt")
        email_input.send_keys(email_user)
        next_button = driver.find_element(By.ID, "idSIButton9")
        next_button.click()
        time.sleep(5)
        verification_code = get_verification_code(email_user, email_pass, "account-security-noreply@accountprotection.microsoft.com")
        if not verification_code:
            raise Exception("Failed to retrieve Microsoft verification code")
        print_message(f"Email Verification code received: {verification_code}")
        code_input = driver.find_element(By.ID, "idTxtBx_OTC_Password")
        code_input.send_keys(verification_code)
        print_message("Inserted Email Verification Code.")
        sign_in_button = driver.find_element(By.ID, "idSIButton9")
        sign_in_button.click()
        time.sleep(10)
        print_message("Clicked Sign In.")
        text_button = driver.find_element(By.XPATH, "//div[contains(text(), 'Text')]//ancestor::div[@role='button']")
        text_button.click()
        time.sleep(60)
        verification_code_second = get_verification_code(email_user, email_pass, "maxiprodc.gps1@gmail.com")
        if not verification_code_second:
            raise Exception("Failed to retrieve SMS verification code")
        print_message(f"SMS verification code received: {verification_code_second}")
        code_input = driver.find_element(By.ID, "idTxtBx_SAOTCC_OTC")
        code_input.clear()
        code_input.send_keys(verification_code_second)
        submit_button = driver.find_element(By.ID, "idSubmit_SAOTCC_Continue")
        submit_button.click()
        time.sleep(5)
        return True
    except Exception as e:
        print_message(f"Error during Komtrax login process: {e}")
        raise

# Function to check if logged in to Komtrax
def is_logged_in_komtrax(driver):
    try:
        driver.find_element(By.XPATH, "//div[contains(@class, 'SideList_Item')]")
        return True
    except NoSuchElementException:
        return False

# Function to scrape models from Komtrax
def scrape_models_komtrax(driver):
    models = []
    try:
        print_message("Scraping Komtrax Model.")
        time.sleep(10)
        model_elements = driver.find_elements(By.XPATH, "//div[contains(@class, 'SideList_Item')]//a[contains(@class, 'SideList_ItemLink')]//div[contains(@class, 'SideList_ItemTexts')]//div[contains(@class, 'SideList_ItemText1')]")
        for model_element in model_elements:
            model_info = model_element.text.strip()
            if model_info and model_info != "-":
                models.append(model_info)
    except Exception as e:
        print_message(f"Error scraping models: {e}")
        raise
    return models

# Function to scrape locations and coordinates from Komtrax
def scrape_locations_and_coordinates_komtrax(driver):
    locations = []
    coordinates = []
    try:
        print_message("Scraping Komtrax Model location and coordinates.")
        time.sleep(10)
        items = driver.find_elements(By.XPATH, "//div[contains(@class, 'DataTable_Item')]")
        for item in items:
            location_elements = item.find_elements(By.XPATH, ".//div[contains(@class, 'DataTable_ValueText')]")
            if len(location_elements) > 15:
                location = location_elements[15].text.strip()
                if location and location != "-":
                    locations.append(location)
                lat_long_element = location_elements[16].text.strip()
                if lat_long_element and lat_long_element != "-":
                    lat, long = lat_long_element.split(" / ")
                    coordinates.append((lat, long))
    except Exception as e:
        print_message(f"Error scraping locations and coordinates: {e}")
        raise
    return locations, coordinates

# Function to scrape conversion from Komtrax
def scrape_conversion_komtrax(driver):
    conversion = []
    try:
        print_message("Scraping conversion datetime...")
        driver.refresh()
        print_message("Refreshed Komtrax page for conversion datetime scraping.")
        time.sleep(2)
        conversion_elements = driver.find_elements(By.XPATH, "//div[contains(@class, 'DataTable_Cell')]//div[contains(@class, 'DateTime')]")
        print_message(f"Found {len(conversion_elements)} conversion datetime elements.")
        for conversion_element in conversion_elements:
            conversion_info = conversion_element.text.strip()
            if conversion_info and conversion_info != "-":
                try:
                    parsed_date = datetime.strptime(conversion_info, "%m/%d/%Y %H:%M:%S")
                    formatted_date = parsed_date.strftime("%Y-%m-%d %H:%M:%S")
                    conversion.append(formatted_date)
                except ValueError as ve:
                    print_message(f"Error parsing date '{conversion_info}': {ve}")
    except Exception as e:
        print_message(f"Error scraping Date and Time: {e}")
        raise
    return conversion

# Function to zoom out the browser content
def zoom_out(driver, zoom_level=0.25):
    try:
        driver.execute_script(f"document.body.style.zoom='{zoom_level}';")
        print_message(f"Zoomed out to {zoom_level * 100}%")
    except Exception as e:
        print_message(f"Error zooming out: {e}")
        raise

# Function to scrape data from Aika
def scrape_data_aika(driver, url):
    try:
        driver.get(url)
        driver.refresh()
        print_message("Refreshed Aika page for data scraping.")
        time.sleep(2)
    except TimeoutException:
        print_message("Page took too long to load. Retrying...")
        driver.get(url)
        driver.refresh()
        time.sleep(2)
    try:
        wait = WebDriverWait(driver, 30, ignored_exceptions=(NoSuchElementException, StaleElementReferenceException))
        wait.until(EC.presence_of_element_located((By.ID, 'pageShowFrame_Map')))
        iframe = driver.find_element(By.ID, 'pageShowFrame_Map')
        driver.switch_to.frame(iframe)
    except Exception as e:
        print_message(f"Error waiting for iframe: {e}")
        raise
    try:
        wait.until(EC.presence_of_element_located((By.ID, 'divDevicesList')))
    except Exception as e:
        print_message(f"Error waiting for div 'divDevicesList': {e}")
        raise
    try:
        div_devices_list = driver.find_element(By.ID, 'divDevicesList')
        div_devices_list_info = div_devices_list.find_element(By.ID, 'divDevicesListInfo')
    except Exception as e:
        print_message(f"Error finding 'divDevicesListInfo': {e}")
        raise
    try:
        wait.until(EC.presence_of_element_located((By.TAG_NAME, 'table')))
        table = div_devices_list_info.find_element(By.TAG_NAME, 'table')
        print_message("Data for scraping found. Scraping...")
    except Exception as e:
        print_message(f"Error finding table: {e}")
        raise
    data = []
    try:
        rows = table.find_elements(By.TAG_NAME, 'tr')
        for row in rows[1:]:
            cols = row.find_elements(By.TAG_NAME, 'td')
            row_data = [col.text.strip() for col in cols]
            if row_data:
                data.append(row_data)
        print_message(f"Extracted {len(data)} records from the table.")
    except Exception as e:
        print_message(f"Error extracting data from the table: {e}")
        raise
    return data

# Function to check if logged in to Aika
def is_logged_in_aika(driver, url):
    try:
        driver.get(url)
        wait = WebDriverWait(driver, 10, ignored_exceptions=(NoSuchElementException, StaleElementReferenceException))
        try:
            wait.until(EC.presence_of_element_located((By.ID, 'pageShowFrame_Map')))
            print_message("Detected logged-in state (pageShowFrame_Map found).")
            return True
        except TimeoutException:
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
        raise

# Function to perform login to Aika
def perform_login_aika(driver, url, max_retries=3):
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
                WebDriverWait(driver, 15).until(EC.presence_of_element_located((By.ID, 'pageShowFrame_Map')))
                print_message("Login successful (pageShowFrame_Map found).")
                return True
            except TimeoutException:
                print_message("Post-login page load timed out, checking if logged in...")
                if is_logged_in_aika(driver, url):
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

# Function to find matching tables for geofence
def find_matching_tables(connection, keyword):
    if not is_connection_active(connection):
        print_message("Database connection lost in find_matching_tables.")
        return []
    cursor = connection.cursor()
    query = f"""
    SELECT table_name 
    FROM information_schema.tables 
    WHERE table_schema = 'mdc'
    AND table_name LIKE '%{keyword}%'
    """
    cursor.execute(query)
    return [table[0] for table in cursor.fetchall()]

# Function to retrieve coordinates and site from assignment table
def get_coordinates_and_site_from_table(connection, table_name):
    if not is_connection_active(connection):
        print_message("Database connection lost in get_coordinates_and_site_from_table.")
        return []
    cursor = connection.cursor()
    query = f"SELECT coordinates, site FROM {table_name}"
    cursor.execute(query)
    return cursor.fetchall()

# Haversine function to calculate distance
def haversine(coord1, coord2):
    R = 6371.0
    lat1, lon1 = coord1
    lat2, lon2 = coord2
    lat1_rad = math.radians(lat1)
    lon1_rad = math.radians(lon1)
    lat2_rad = math.radians(lat2)
    lon2_rad = math.radians(lon2)
    dlon = lon2_rad - lon1_rad
    dlat = lat2_rad - lat1_rad
    a = math.sin(dlat / 2)**2 + math.cos(lat1_rad) * math.cos(lat2_rad) * math.sin(dlon / 2)**2
    c = 2 * math.asin(math.sqrt(a))
    return R * c

# Function to check if within geofence
def is_within_geofence(device_location, geofence_coordinates, radius=5):
    distance = haversine(device_location, geofence_coordinates)
    return distance <= radius

# Function to insert or update notification
def insert_or_update_notification(connection, target_name, assignment, status):
    if not is_connection_active(connection):
        print_message("Database connection lost in insert_or_update_notification.")
        return
    cursor = connection.cursor()
    check_query = "SELECT COUNT(*) FROM geofence WHERE target_name = %s"
    cursor.execute(check_query, (target_name,))
    count = cursor.fetchone()[0]
    if count > 0:
        update_query = "UPDATE geofence SET status = %s, assignment = %s, timestamp = NOW() WHERE target_name = %s"
        cursor.execute(update_query, (status, assignment, target_name))
        print_message(f"Updated notification for {target_name}: {status}")
    else:
        insert_query = "INSERT INTO geofence (target_name, assignment, status, timestamp) VALUES (%s, %s, %s, NOW())"
        cursor.execute(insert_query, (target_name, assignment, status))
        print_message(f"Inserted notification for {target_name}: {status}")
    connection.commit()

# Function to delete notification
def delete_notification(connection, target_name):
    if not is_connection_active(connection):
        print_message("Database connection lost in delete_notification.")
        return
    cursor = connection.cursor()
    delete_query = "DELETE FROM geofence WHERE target_name = %s"
    cursor.execute(delete_query, (target_name,))
    connection.commit()

# Function to get device location
def get_device_location(latitude, longitude):
    return (latitude, longitude)

# Function to retrieve devices from tables
def get_devices_from_table(connection, table_name):
    if not is_connection_active(connection):
        print_message(f"Database connection lost in get_devices_from_table ({table_name}).")
        return []
    cursor = connection.cursor()
    query = f"SELECT target_name, address, latitude, longitude, assignment, equipment_type FROM {table_name}"
    cursor.execute(query)
    return cursor.fetchall()

# Function to check if geofence table is empty
def is_geofence_table_empty(connection):
    if not is_connection_active(connection):
        print_message("Database connection lost in is_geofence_table_empty.")
        return True
    cursor = connection.cursor()
    cursor.execute("SELECT COUNT(*) FROM geofence")
    count = cursor.fetchone()[0]
    return count == 0

# Function to truncate geofence table
def truncate_geofence_table(connection):
    if not is_connection_active(connection):
        print_message("Database connection lost in truncate_geofence_table.")
        return
    cursor = connection.cursor()
    cursor.execute("TRUNCATE TABLE geofence")
    connection.commit()
    print_message("Geofence table has been truncated.")

# Main function
def main(driver_komtrax, driver_aika, connection):
    global shutdown_flag, last_known_address
    # URLs
    KOMTRAX_URL = 'https://cfm.komtrax.komatsu/c/fm/info?count=50'
    AIKA_URL = 'https://en.aika168.com/index.aspx'
    # Credentials
    EMAIL_USER = 'maxiprodc.gps1@gmail.com'
    EMAIL_PASS = 'bqnk vcfm oszm aggm'
    try:
        # Ensure database connection is active
        if not is_connection_active(connection):
            print_message("Database connection is closed or invalid. Reinitializing...")
            connection = create_connection()
            if not connection:
                raise Error("Failed to connect to database")
        
        create_komtrax_table(connection)
        create_devices_table(connection)
        create_geofence_table(connection)
        
        # Check if drivers are usable, reinitialize if not
        if not is_driver_usable(driver_komtrax):
            print_message("Komtrax WebDriver is not usable. Reinitializing...")
            if driver_komtrax:
                try:
                    driver_komtrax.quit()
                except:
                    pass
            driver_komtrax = initialize_driver()
        if not is_driver_usable(driver_aika):
            print_message("Aika WebDriver is not usable. Reinitializing...")
            if driver_aika:
                try:
                    driver_aika.quit()
                except:
                    pass
            driver_aika = initialize_driver()
        
        # Komtrax login
        if not is_logged_in_komtrax(driver_komtrax):
            login_to_komtrax(driver_komtrax, EMAIL_USER, EMAIL_PASS)
        
        # Aika login
        if is_logged_in_aika(driver_aika, AIKA_URL):
            print_message("Already logged in to Aika, skipping login.")
        else:
            perform_login_aika(driver_aika, AIKA_URL)
        
        start_time = time.time()
        while not shutdown_flag:
            if not check_internet_connection():
                print_message(f"No internet connection. Last known address: {last_known_address}")
                time.sleep(5)
                continue
            # Ensure connection is active before database operations
            if not is_connection_active(connection):
                print_message("Database connection lost in main loop. Reinitializing...")
                connection = create_connection()
                if not connection:
                    print_message("Failed to reinitialize database connection. Retrying in 10 seconds...")
                    time.sleep(10)
                    continue
            # Scrape Komtrax
            try:
                driver_komtrax.get(KOMTRAX_URL)
                time.sleep(10)
                zoom_out(driver_komtrax, zoom_level=0.25)
                models = scrape_models_komtrax(driver_komtrax)
                locations, coordinates = scrape_locations_and_coordinates_komtrax(driver_komtrax)
                conversion = scrape_conversion_komtrax(driver_komtrax)
                if not models:
                    print_message("No data scraped from Komtrax. Checking login status...")
                    if not is_logged_in_komtrax(driver_komtrax):
                        print_message("Komtrax session expired, re-logging in...")
                        login_to_komtrax(driver_komtrax, EMAIL_USER, EMAIL_PASS)
                    continue
                successful_updates_komtrax = 0
                for model, location, (lat, long), position_time in zip(models, locations, coordinates, conversion):
                    equipment_type = determine_equipment_type_komtrax(model)
                    try:
                        lat = float(lat)
                        long = float(long)
                        success, status = insert_model_komtrax(connection, model, equipment_type, location, position_time, lat, long)
                        if success:
                            print_message(f"{status} model '{model}' successfully in komtrax.")
                            successful_updates_komtrax += 1
                        else:
                            print_message(f"Failed to process model '{model}' in komtrax.")
                    except ValueError:
                        print_message(f"Invalid coordinates for model '{model}'.")
                print_message(f"Successfully processed {successful_updates_komtrax} records from Komtrax.")
            except Exception as e:
                print_message(f"Error scraping Komtrax: {e}")
                if not is_driver_usable(driver_komtrax):
                    print_message("Komtrax WebDriver failed. Reinitializing...")
                    if driver_komtrax:
                        try:
                            driver_komtrax.quit()
                        except:
                            pass
                    driver_komtrax = initialize_driver()
                continue
            # Scrape Aika
            try:
                device_data_list = scrape_data_aika(driver_aika, AIKA_URL)
                if not device_data_list:
                    print_message("No data scraped from Aika. Checking login status...")
                    if not is_logged_in_aika(driver_aika, AIKA_URL):
                        print_message("Aika session expired, re-logging in...")
                        perform_login_aika(driver_aika, AIKA_URL)
                    continue
                successful_updates_aika = 0
                for device_data in device_data_list:
                    if insert_or_update_data_aika(connection, device_data):
                        successful_updates_aika += 1
                print_message(f"Successfully processed {successful_updates_aika} records from Aika.")
            except Exception as e:
                print_message(f"Error scraping Aika: {e}")
                if not is_driver_usable(driver_aika):
                    print_message("Aika WebDriver failed. Reinitializing...")
                    if driver_aika:
                        try:
                            driver_aika.quit()
                        except:
                            pass
                    driver_aika = initialize_driver()
                continue
            # Geofence Processing
            try:
                devices_from_devices = get_devices_from_table(connection, 'devices')
                devices_from_komtrax = get_devices_from_table(connection, 'komtrax')
                all_devices = list(devices_from_devices) + list(devices_from_komtrax)
                print_message(f"Retrieved {len(devices_from_devices)} devices from devices table.")
                print_message(f"Retrieved {len(devices_from_komtrax)} devices from komtrax table.")
                print_message(f"Total devices to process for geofencing: {len(all_devices)}")
                for target_name, address, latitude, longitude, assignment, equipment_type in all_devices:
                    if equipment_type == "GPS Tracker":
                        print_message(f"Skipping device {target_name} because it is a GPS Tracker.")
                        continue
                    if not assignment:
                        print_message(f"Skipping device {target_name} due to empty assignment.")
                        continue
                    print_message(f"Processing device: {target_name} with address: {address}, Assignment: {assignment}")
                    device_location = get_device_location(latitude, longitude)
                    normalized_assignment = assignment.strip().lower().replace(" ", "")
                    matching_tables = find_matching_tables(connection, normalized_assignment)
                    print_message(f"Found matching tables for assignment '{assignment}': {matching_tables}")
                    if matching_tables:
                        notification_deleted = False
                        for table_name in matching_tables:
                            print_message(f"Accessing table: {table_name}")
                            try:
                                coordinates_data = get_coordinates_and_site_from_table(connection, table_name)
                                if coordinates_data:
                                    print_message(f"Retrieved coordinates from {table_name}: {coordinates_data}")
                                    for coord in coordinates_data:
                                        if notification_deleted:
                                            break
                                        try:
                                            lat, lon = map(float, coord[0].strip().split(','))
                                            site = coord[1]
                                        except ValueError:
                                            print_message(f"Invalid coordinate format: {coord[0]}")
                                            delete_notification(connection, target_name)
                                            print_message(f"Deleted notification for {target_name} due to invalid coordinates.")
                                            notification_deleted = True
                                            break
                                        geofence_coordinates = (lat, lon)
                                        if is_within_geofence(device_location, geofence_coordinates):
                                            if not notification_deleted:
                                                delete_notification(connection, target_name)
                                                notification_deleted = True
                                                print_message(f"Deleted notification for {target_name} at {coord[1]}.")
                                                break
                                        else:
                                            status = f"Outside Geofence - {address}, Site: {site}"
                                            insert_or_update_notification(connection, target_name, assignment, status)
                                            if "Address not found" in address:
                                                delete_notification(connection, target_name)
                                                print_message(f"Deleted notification for {target_name} due to address not found.")
                                                notification_deleted = True
                                                break
                                else:
                                    print_message(f"No coordinates found for assignment table: {table_name}")
                            except Error as e:
                                print_message(f"Error accessing table {table_name}: {e}")
                    else:
                        print_message(f"No matching tables found for assignment: {assignment}")
                if is_geofence_table_empty(connection):
                    truncate_geofence_table(connection)
            except Exception as e:
                print_message(f"Error in geofencing: {e}")
            current_time = datetime.now().strftime('%Y-%m-%d %I:%M:%S %p')
            elapsed_time = time.time() - start_time
            elapsed_time_str = time.strftime("%H:%M:%S", time.gmtime(elapsed_time))
            print_message(f"Completed iteration at {current_time}. Elapsed time: {elapsed_time_str}.")
            print_message("Waiting for 10 minutes before next iteration...")
            for _ in range(600):
                if shutdown_flag:
                    break
                time.sleep(1)
    except Exception as e:
        error_message = f"Critical error in main loop: {e}"
        print_message(error_message)
        close_resources(driver_komtrax, driver_aika, connection, shutdown=shutdown_flag)
        if shutdown_flag:
            print_message("Shutting down gracefully due to shutdown signal...")
            return False, None, None, None
        else:
            print_message("Restarting main loop due to error...")
            time.sleep(10)
            return True, driver_komtrax, driver_aika, connection
    finally:
        if shutdown_flag:
            close_resources(driver_komtrax, driver_aika, connection, shutdown=True)
    return True, driver_komtrax, driver_aika, connection

# Outer loop to handle restarts
def run_script():
    global driver_komtrax, driver_aika, connection
    driver_komtrax = None
    driver_aika = None
    connection = None
    try:
        driver_komtrax = initialize_driver()
        driver_aika = initialize_driver()
        connection = create_connection()
        while True:
            result, driver_komtrax, driver_aika, connection = main(driver_komtrax, driver_aika, connection)
            if not result:
                print_message("Exiting script due to shutdown signal.")
                break
            print_message("Restarting script due to error...")
    finally:
        close_resources(driver_komtrax, driver_aika, connection, shutdown=True)

if __name__ == "__main__":
    run_script()
