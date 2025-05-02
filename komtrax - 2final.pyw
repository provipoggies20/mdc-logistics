import os
import mysql.connector
import time
import imaplib
import re
import email
from email.header import decode_header
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from mysql.connector import Error
from datetime import datetime
import logging
import smtplib
from email.mime.text import MIMEText

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
            print_message("Email sent successfully!")
    except Exception as e:
        print_message(f"Failed to send email: {e}")

# Get the current directory of the script
current_directory = os.path.dirname(os.path.abspath(__file__))

# Define the Logs directory path
logs_directory = os.path.join(current_directory, 'Logs')

# Ensure the Logs directory exists
os.makedirs(logs_directory, exist_ok=True)

# Define the full path for the log file inside the Logs directory
log_file_path = os.path.join(logs_directory, 'komtrax.log')

# Configure logging with date and time format
logging.basicConfig(
    filename=log_file_path,
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    datefmt='%Y-%m-%d %H:%M:%S'
)

# Global variable to count printed lines
line_count = 0

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

# Function to initialize the WebDriver
def initialize_driver():
    chrome_options = Options()
    chrome_options.add_argument("--disable-extensions")
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--start-maximized")
    chrome_options.add_argument("--headless")
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
            password=''  # Update with your MySQL password
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
                days_contract INT(255) NOT NULL,
                date_ended TEXT NOT NULL,
                days_elapsed INT(255) NOT NULL, 
                remarks TEXT NOT NULL,
                days_no_gps INT(255) NOT NULL,
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
            print_message("Table 'komtrax' created successfully.")
    except Error as e:
        print_message(f"Error creating table: {e}")

# Update the insert_model function to accept latitude and longitude
def insert_model(connection, model_info, equipment_type, location, position_time, latitude, longitude):
    if connection is None or not connection.is_connected():
        print_message("Database connection is lost. Skipping update.")
        return False, "Failed"  # Indicate failure

    try:
        cursor = connection.cursor()

        insert_query = '''
        INSERT INTO komtrax (target_name, equipment_type, address, position_time, latitude, longitude)
        VALUES (%s, %s, %s, %s, %s, %s)
        ON DUPLICATE KEY UPDATE
            equipment_type = VALUES(equipment_type),
            address = VALUES(address),
            position_time = VALUES(position_time),
            latitude = VALUES(latitude),
            longitude = VALUES(longitude)
        '''
        
        cursor.execute(insert_query, (model_info, equipment_type, location, position_time, latitude, longitude))
        connection.commit()

        # Check if the operation was an insert or an update
        if cursor.rowcount == 1:
            return True, "Inserted"  # Indicate success and that it was an insert
        else:
            return True, "Updated"  # Indicate success and that it was an update

    except Error as e:
        print_message(f"Error inserting/updating model '{model_info}': {e}")
        return False, "Failed"

# Function to log in to Komtrax
def login_to_komtrax(driver, email_user):
    driver.get("https://cfm.komtrax.komatsu/c/fm/login")
    time.sleep(5)  # Wait for the page to load

    # Enter the email address
    email_input = driver.find_element(By.NAME, "loginfmt")  # Adjust the selector as needed
    email_input.send_keys(email_user)

    # Click the Next button
    next_button = driver.find_element(By.ID, "idSIButton9")  # Adjust the selector as needed
    next_button.click()

    time.sleep(5)  # Wait for the next page to load

# Function to get the verification code from email
def get_verification_code(email_user, email_pass):
    mail = imaplib.IMAP4_SSL("imap.gmail.com")
    mail.login(email_user, email_pass)
    mail.select("inbox")

    # Search for emails from the sender
    status, messages = mail.search(None, '(FROM "account-security-noreply@accountprotection.microsoft.com")')
    email_ids = messages[0].split()

    if not email_ids:
        print_message("No verification email found.")
        return None

    latest_email_id = email_ids[-1]
    status, msg = mail.fetch(latest_email_id, "(RFC822)")
    msg = email.message_from_bytes(msg[0][1])

    # Extract the verification code from the email body
    for part in msg.walk():
        if part.get_content_type() == "text/plain":
            body = part.get_payload(decode=True).decode()
            verification_code_match = re.search(r'\b\d{6,8}\b', body)  # Matches any 6 to 8 digit number
            if verification_code_match:
                return verification_code_match.group(0)

    print_message("Verification code not found in the email.")
    return None

def get_second_verification_code(email_user, email_pass, sender_email):
    mail = imaplib.IMAP4_SSL("imap.gmail.com")
    mail.login(email_user, email_pass)
    mail.select("inbox")

    # Search for emails from the specified sender
    status, messages = mail.search(None, f'(FROM "{sender_email}")')
    email_ids = messages[0].split()

    if not email_ids:
        print_message(f"No verification email found from {sender_email}.")
        return None

    latest_email_id = email_ids[-1]
    status, msg = mail.fetch(latest_email_id, "(RFC822)")
    msg = email.message_from_bytes(msg[0][1])

    # Extract the verification code from the email body
    for part in msg .walk():
        if part.get_content_type() == "text/plain":
            body = part.get_payload(decode=True).decode()
            verification_code_match = re.search(r'\b\d{6,8}\b', body)  # Matches any 6 to 8 digit number
            if verification_code_match:
                return verification_code_match.group(0)

    print_message("Verification code not found in the email.")
    return None

# Function to scrape models from the webpage
def scrape_models(driver):
    models = []
    try:
        model_elements = driver.find_elements(By.XPATH, "//div[contains(@class, 'SideList_Item')]//a[contains(@class, 'SideList_ItemLink')]//div[contains(@class, 'SideList_ItemTexts')]//div[contains(@class, 'SideList_ItemText1')]")
        
        for model_element in model_elements:
            model_info = model_element.text.strip()
            if model_info and model_info != "-":
                models.append(model_info)
    except Exception as e:
        print_message(f"Error scraping models: {e}")
    
    return models

# Function to scrape locations and coordinates from the webpage
def scrape_locations_and_coordinates(driver):
    locations = []
    coordinates = []
    try:
        items = driver.find_elements(By.XPATH, "//div[contains(@class, 'DataTable_Item')]")
        
        for item in items:
            # Extract location
            location_elements = item.find_elements(By.XPATH, ".//div[contains(@class, 'DataTable_ValueText')]")
            if len(location_elements) > 15:
                location = location_elements[15].text.strip()
                if location and location != "-":
                    locations.append(location)

                # Extract latitude and longitude from the next cell
                lat_long_element = location_elements[16].text.strip()  # Assuming lat/long is in the next cell
                if lat_long_element and lat_long_element != "-":
                    lat, long = lat_long_element.split(" / ")  # Assuming the format is "lat / long"
                    coordinates.append((lat, long))

    except Exception as e:
        print_message(f"Error scraping locations and coordinates: {e}")

    return locations, coordinates

    return locations

# Function to scrape conversion from the webpage
def scrape_conversion(driver):
    conversion = []
    try:
        print_message("Scraping conversion datetime...")  # Indicate that scraping is starting
        
        # Locate all items that contain the conversion datetime information
        conversion_elements = driver.find_elements(By.XPATH, "//div[contains(@class, 'DataTable_Cell')]//div[contains(@class, 'DateTime')]")
        
        print_message(f"Found {len(conversion_elements)} conversion datetime elements.")  # Debugging line
        
        for conversion_element in conversion_elements:
            conversion_info = conversion_element.text.strip()
            if conversion_info and conversion_info != "-":
                # Convert the datetime format
                try:
                    # Parse the datetime string
                    parsed_date = datetime.strptime(conversion_info, "%m/%d/%Y %H:%M:%S")
                    # Convert to the desired format
                    formatted_date = parsed_date.strftime("%Y-%m-%d %H:%M:%S")
                    conversion.append(formatted_date)
                except ValueError as ve:
                    print_message(f"Error parsing date '{conversion_info}': {ve}")
    except Exception as e:
        print_message(f"Error scraping Date and Time: {e}")
    
    return conversion

# Function to log in to Komtrax
def login_to_komtrax(driver, email_user):
    try:
        driver.get("https://cfm.komtrax.komatsu/c/fm/login")
        time.sleep(5)  # Wait for the page to load

        # Enter the email address
        try:
            email_input = driver.find_element(By.NAME, "loginfmt")  # Adjust the selector as needed
            email_input.send_keys(email_user)
        except Exception as e:
            print_message(f"Error finding email input field: {e}")
            return  # Exit the function if there's an error

        # Click the Next button
        try:
            next_button = driver.find_element(By.ID, "idSIButton9")  # Adjust the selector as needed
            next_button.click()
        except Exception as e:
            print_message(f"Error clicking Next button: {e}")
            return  # Exit the function if there's an error

        time.sleep(5)  # Wait for the next page to load
    except Exception as e:
        print_message(f"Error during login process: {e}")

# Function to zoom out the browser content
def zoom_out(driver, zoom_level=0.25):
    try:
        # Execute JavaScript to set the zoom level
        driver.execute_script(f"document.body.style.zoom='{zoom_level}';")
        print_message(f"Zoomed out to {zoom_level * 100}%")
    except Exception as e:
        print_message(f"Error zooming out: {e}")

# Function to determine equipment type based on target_name
def determine_equipment_type(target_name):
    # Define keywords for "BH"
    bh_keywords = ["PC200", "PC210", "PC220"]  # Add more keywords as needed

    # Check if any of the keywords are in the target_name
    if any(keyword in target_name for keyword in bh_keywords):
        return "BH"
    
    # Default equipment type if no keywords match
    return "Not Specified"

# Main function to run the automation
def main():
    connection = create_connection()
    create_table(connection)
    driver = initialize_driver()

    email_user = "maxiprodc.gps1@gmail.com"  # Replace with your email
    email_pass = "gosc bvup dtpq zpsv"  # Replace with your App Password

    # Email configuration
    TO_EMAIL = 'maxiprodc.gps1@gmail.com'  # Replace with your email address
    SMTP_SERVER = 'smtp.gmail.com'  # Your SMTP server
    SMTP_PORT = 587  # Common port for TLS
    SMTP_USER = 'maxiprodc.gps1@gmail.com'  # Your email address
    SMTP_PASSWORD = 'gosc bvup dtpq zpsv'  # Your email password
    
    login_to_komtrax(driver, email_user)
    print_message(f"Getting the Email Verification...")
    time.sleep(60)  # Wait for 1 minute before searching for the code in the email

    # Zoom out the browser content
    zoom_out(driver, zoom_level=0.25)  # Zoom out to 25%
    
    # Get the first verification code from Microsoft
    verification_code_microsoft = get_verification_code(email_user, email_pass)
    if verification_code_microsoft:
        print_message(f"Email Verification code received: {verification_code_microsoft}")
    else:
        print_message("Failed to retrieve the Email Verification code.")
        driver.quit()
        if connection is not None and connection.is_connected():
            connection.close()
        return

    # Enter the Microsoft verification code into the input field
    code_input = driver.find_element(By.ID, "idTxtBx_OTC_Password")  # Adjust the selector as needed
    code_input.send_keys(verification_code_microsoft)

    print_message(f"Inserted Email Verification Code.")

    # Click the Sign In button
    sign_in_button = driver.find_element(By.ID, "idSIButton9")  # Adjust the selector as needed
    sign_in_button.click()

    time.sleep(5)  # Wait for the next page to load after sign-in
    print_message(f"Clicked Sign In.")
    
    # Click the button that has the word "Text"
    text_button = driver.find_element(By.XPATH, "//div[contains(text(), 'Text')]//ancestor::div[@role='button']")  # Adjust the XPath as needed
    text_button.click()

    time.sleep(60)  # Wait for 1 minute for the SMS code
    print_message(f"Waiting for SMS Code...")

    # Get the second verification code from another sender
    sender_email = "maxiprodc.gps1@gmail.com"  # Replace with the actual sender's email
    verification_code_second = get_second_verification_code(email_user, email_pass, sender_email)
    if verification_code_second:
        print_message(f"SMS verification code received: {verification_code_second}")
    else:
        print_message("Failed to retrieve the SMS verification code.")
        driver.quit()
        if connection is not None and connection.is_connected():
            connection.close()
        return

    # Insert the second verification code into the textbox
    code_input = driver.find_element(By.ID, "idTxtBx_SAOTCC_OTC")  # Locate the textbox for the second verification code
    code_input.clear()  # Clear any pre-filled value
    code_input.send_keys(verification_code_second)  # Enter the second verification code

    # Click the submit button to proceed
    submit_button = driver.find_element(By.ID, "idSubmit_SAOTCC_Continue")  # Adjust the selector as needed
    submit_button.click()

    time.sleep(5)  # Wait for the next page to load after submitting the code

    # Continuous scraping loop
        while True:  # Start an infinite loop for continuous scraping
            try:
                # After successful login, scrape data
                driver.get("https://cfm.komtrax.komatsu/c/fm/info?count=50")
                time.sleep(5)  # Wait for the page to load
                
                # Set zoom after loading the page
                zoom_out(driver, zoom_level=0.25)  # Zoom out to 25%
                
                models = scrape_models(driver)
                locations, coordinates = scrape_locations_and_coordinates(driver)

                # Scrape conversion datetime
                conversion = scrape_conversion(driver)

                # Insert scraped models, locations, and coordinates into the database
                for model, location, (lat, long), position_time in zip(models, locations, coordinates, conversion):
                    # Determine the equipment type based on the model name
                    equipment_type = determine_equipment_type(model)
                    success, status = insert_model(connection, model, equipment_type, location, position_time, lat, long)
                    if success:
                        print_message(f"{status} model '{model}' successfully.")
                    else:
                        print_message(f"Failed to process model '{model}'.")

                print_message("Waiting for 10 minutes before the next scrape...")
                time.sleep(600)  # Wait for 10 minutes before the next scrape

            except Exception as e:
                print_message(f"Error during scraping: {e}")
                send_email_notification(TO_EMAIL, "KOMTRAX Sraper - Error", str(e), SMTP_SERVER, SMTP_PORT, SMTP_USER, SMTP_PASSWORD)
                print_message("Error notification sent via email.")

    except KeyboardInterrupt:
        print_message("Scraping stopped by user.")

    finally:
        if connection is not None and connection.is_connected():
            connection.close()
            print_message("MySQL connection closed.")

        driver.quit()
        print_message("WebDriver closed. Script execution completed.")

if __name__ == "__main__":
    main()
