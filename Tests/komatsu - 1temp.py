import os
import mysql.connector
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from mysql.connector import Error
import time
from datetime import datetime

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
            CREATE TABLE aika (
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
                gps_id VARCHAR(255) NOT NULL,
                equipment_type VARCHAR(255) NOT NULL,
                conduction_sticker VARCHAR(255) NOT NULL,
                tag VARCHAR(255) NOT NULL,
                specs TEXT NOT NULL NOT NULL, 
                physical_status TEXT NOT NULL,
                assignment TEXT NOT NULL,
                date_transferred DATE NOT NULL,
                days_contract INT(255) NOT NULL,
                date_ended DATE NOT NULL,
                days_elapsed INT(255) NOT NULL,
                remarks TEXT NOT NULL,
                days_no_gps INT(255) NOT NULL,
                last_assignment TEXT NOT NULL,
                last_days_contract INT(255) NOT NULL,
                last_date_transferred DATE NOT NULL,
                last_date_ended DATE NOT NULL,
                last_days_elapsed INT(255) NOT NULL
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

# Function to scrape locations from the webpage
def scrape_locations(driver):
    locations = []
    try:
        items = driver.find_elements(By.XPATH, "//div[contains(@class, 'DataTable_Item')]")
        
        for item in items:
            location_elements = item.find_elements(By.XPATH, ".//div[contains(@class, 'DataTable_ValueText')]")
            if len(location_elements) > 15:
                location = location_elements[15].text.strip()
                if location and location != "-":
                    locations.append(location)
    except Exception as e:
        print_message(f"Error scraping locations: {e}")

    return locations

# Function to scrape conversion from the webpage
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

# Main function to run the script
def main():
    driver = initialize_driver()
    db_connection = create_connection()
    if db_connection is None:
        print_message("Failed to connect to the database.")
        driver.quit()
        return

    create_table(db_connection)

    driver.get("https://cfm.komtrax.komatsu/c/fm/login")
    time.sleep(120)  # Wait for manual login

    while True:  # Start an infinite loop for continuous scraping
        try:
            driver.get("https://cfm.komtrax.komatsu/c/fm/info?count=50")
            time.sleep(5)  # Wait for the page to load

            models = scrape_models(driver)
            locations = scrape_locations(driver)

            # Scrape conversion datetime
            conversion = scrape_conversion(driver)

            # Insert scraped models and locations into the database
            for model, location, position_time in zip(models, locations, conversion):
                success, status = insert_model(db_connection, model, "Backhoe", location, position_time)
                if success:
                    print_message(f"{status} model '{model}' with location '{location}' at '{position_time}' successfully.")
                else:
                    print_message(f"Failed to process model '{model}'.")

            print_message("Waiting for 2 minutes before the next scrape...")
            time.sleep(120)  # Wait for 2 minutes before the next scrape

        except Exception as e:
            print_message(f"An error occurred during scraping: {e}")
            break  # Exit the loop on error

    if db_connection and db_connection.is_connected():
        db_connection.close()
        print_message("Database connection closed.")

    driver.quit()
    print_message("WebDriver closed. Script execution completed.")

if __name__ == "__main__":
    main()
