import os
import mysql.connector
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from mysql.connector import Error
import time
import imaplib
import re
import email

# Global variable to count printed lines
line_count = 0

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

# Function to initialize the WebDriver
def initialize_driver():
    chrome_options = Options()
    chrome_options.add_argument("--disable-extensions")
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--start-maximized")
    service = Service(r'\\GPSX1\C$\Users\ADMIN\Desktop\SYSTEM\chromedriver-win64\chromedriver-win64\chromedriver.exe')
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
        cursor.execute("SHOW TABLES LIKE 'komatsu'")
        result = cursor.fetchone()

        if result:
            print_message("Table 'komatsu' already exists.")
        else:
            create_table_query = '''
            CREATE TABLE komatsu (
                id INT AUTO_INCREMENT PRIMARY KEY,
                target_name VARCHAR(255) UNIQUE,
                equipment_type VARCHAR(255) NOT NULL,
                address VARCHAR(255) NOT NULL,
                position_time DATETIME NOT NULL
            )
            '''
            cursor.execute(create_table_query)
            connection.commit()
            print_message("Table 'komatsu' created successfully.")
    except Error as e:
        print_message(f"Error creating table: {e}")

# Function to insert a model into the MySQL database
def insert_model(connection, model_info, equipment_type, location, position_time):
    if connection is None or not connection.is_connected():
        print_message("Database connection is lost. Skipping update.")
        return False, "Failed"  # Indicate failure

    try:
        cursor = connection.cursor()

        insert_query = '''
        INSERT INTO komatsu (target_name, equipment_type, address, position_time)
        VALUES (%s, %s, %s, %s)
        ON DUPLICATE KEY UPDATE
            equipment_type = VALUES(equipment_type),
            address = VALUES(address),
            position_time = VALUES(position_time)
        '''
        
        cursor.execute(insert_query, (model_info, equipment_type, location, position_time))
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
    # Enter the password (if needed)
    # password_input = driver.find_element(By.NAME, "passwd")  # Adjust the selector as needed
    # password_input.send_keys(email_pass)
    # sign_in_button = driver.find_element(By.ID, "idSIButton9")  # Adjust the selector as needed
    # sign_in_button.click()

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

# Main function to run the automation
def main():
    connection = create_connection()
    create_table(connection)
    driver = initialize_driver()

    email_user = "maxiprodc.gps1@gmail.com"  # Replace with your email
    email_pass = "iwdg mcvt host tman"  # Replace with your password

    login_to_komtrax(driver, email_user)
    time.sleep(30)  # Wait for 30 seconds before searching for the code in the email
    verification_code = get_verification_code(email_user, email_pass)

    if verification_code:
        print_message(f"Verification code received: {verification_code}")
        # Continue with the rest of your automation logic

    driver.quit()
    if connection:
        connection.close()

if __name__ == "__main__":
    main()
