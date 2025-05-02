import mysql.connector
from mysql.connector import Error
from geopy.geocoders import Nominatim
from geopy.exc import GeocoderTimedOut, GeocoderUnavailable
from geopy.distance import great_circle
import time
import os
import subprocess
import logging
import pandas as pd

# Get the current directory of the script
current_directory = os.path.dirname(os.path.abspath(__file__))

# Define the Logs directory path
logs_directory = os.path.join(current_directory, 'Logs')

# Ensure the Logs directory exists
os.makedirs(logs_directory, exist_ok=True)

# Define the full path for the log file inside the Logs directory
log_file_path = os.path.join(logs_directory, 'geofence.log')

# Configure logging with date and time format
logging.basicConfig(
    filename=log_file_path,
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    datefmt='%Y-%m-%d %H:%M:%S'
)

# Function to create a connection to the database
def create_connection():
    try:
        connection = mysql.connector.connect(
            host='localhost',
            database='mdc',  # Replace with your database name
            user='root',
            password=''
        )
        if connection.is_connected():
            print("Connected to MySQL database")
            return connection
    except Error as e:
        print(f"Error: {e}")
        return None

# Function to create the notifications table if it doesn't exist
def create_notifications_table(connection):
    cursor = connection.cursor()
    create_table_query = '''
    CREATE TABLE IF NOT EXISTS geofence (
        id INT AUTO_INCREMENT PRIMARY KEY,
        target_name VARCHAR(255) NOT NULL,
        status VARCHAR(255) NOT NULL,
        timestamp DATETIME NOT NULL
    )
    '''
    cursor.execute(create_table_query)
    connection.commit()
    print("Geofence table is ready.")

# Function to retrieve devices and their assignments from the database
def get_devices(connection):
    cursor = connection.cursor()
    cursor.execute("SELECT target_name, address, assignment FROM devices")
    return cursor.fetchall()

# Function to find matching tables based on the assignment keyword
def find_matching_tables(connection, keyword):
    cursor = connection.cursor()
    query = f"""
    SELECT table_name 
    FROM information_schema.tables 
    WHERE table_schema = 'mdc'  # Replace with your database name
    AND table_name LIKE '%{keyword}%'
    """
    cursor.execute(query)
    return [table[0] for table in cursor.fetchall()]  # Returns a list of matching table names

# Function to retrieve coordinates from the corresponding assignment table
def get_coordinates_from_table(connection, table_name):
    cursor = connection.cursor()
    query = f"SELECT coordinates FROM {table_name}"
    cursor.execute(query)
    return cursor.fetchall()  # Returns a list of coordinates

# Function to check if a point is within a geofence
def is_within_geofence(device_location, geofence_coordinates, radius=3000):  # Change radius to 3000 meters ( 3 km)
    distance = great_circle(device_location, geofence_coordinates).meters
    return distance <= radius

# Function to reverse geocode an address to get the full address
def reverse_geocode(address):
    geolocator = Nominatim(user_agent="myGeocoder")
    try:
        location = geolocator.geocode(address)
        if location:
            return location.address
        else:
            return "Address not found"
    except GeocoderTimedOut:
        return "Geocoder service timed out"

# Function to insert a notification into the database
def insert_or_update_notification(connection, target_name, status):
    cursor = connection.cursor()
    
    # Check if a notification for the target_name already exists
    check_query = "SELECT COUNT(*) FROM geofence WHERE target_name = %s"
    cursor.execute(check_query, (target_name,))
    count = cursor.fetchone()[0]

    if count > 0:
        # Update the existing record
        update_query = "UPDATE geofence SET status = %s, timestamp = NOW() WHERE target_name = %s"
        cursor.execute(update_query, (status, target_name))
        print(f"Updated notification for {target_name}: {status}")
    else:
        # Insert a new record
        insert_query = "INSERT INTO geofence (target_name, status, timestamp) VALUES (%s, %s, NOW())"
        cursor.execute(insert_query, (target_name, status))
        print(f"Inserted notification for {target_name}: {status}")

    connection.commit()

# Function to clear the console
def clear_console():
    os.system('cls' if os.name == 'nt' else 'clear')

# Function to get the device location based on the address
def get_device_location(address, retries=3):
    geolocator = Nominatim(user_agent="myGeocoder")
    for attempt in range(retries):
        try:
            location = geolocator.geocode(address, timeout=10)  # Increase the timeout to 10 seconds
            if location:
                return (location.latitude, location.longitude)
            else:
                print(f"Location not found for address: {address}")
                return None
        except GeocoderTimedOut:
            print("Geocoder service timed out, retrying...")
            time.sleep(2)  # Wait before retrying
        except GeocoderUnavailable as e:
            print(f"Geocoder service unavailable: {e}")
            return None
        except Exception as e:
            print(f"An error occurred: {e}")
            return None
    print(f"Failed to get location for address after {retries} attempts.")
    return None

# Function to delete a notification from the database
def delete_notification(connection, target_name):
    cursor = connection.cursor()
    delete_query = "DELETE FROM geofence WHERE target_name = %s"
    cursor.execute(delete_query, (target_name,))
    connection.commit()
    print(f"Deleted notification for {target_name}.")

# Function to retrieve coordinates from the corresponding assignment table
def get_coordinates_from_table(connection, table_name):
    cursor = connection.cursor()
    query = f"SELECT coordinates FROM {table_name}"
    cursor.execute(query)
    return cursor.fetchall()  # Returns a list of coordinates

# Main function to run the geofencing logic
def main():
    printed_lines = 0  # Initialize printed lines counter

    while True:  # Infinite loop
        connection = create_connection()  # Create a new connection for each iteration
        if connection is None:
            print("Failed to connect to the database. Retrying in 20 seconds...")
            time.sleep(20)
            continue  # Retry the connection

        create_notifications_table(connection)
        devices = get_devices(connection)
        print(f"Retrieved {len(devices)} devices from the database.")

        for target_name, address, assignment in devices:
            if not assignment:
                print(f"Skipping device {target_name} due to empty assignment.")
                printed_lines += 1
                continue

            print(f"Processing device: {target_name} with address: {address} and assignment: {assignment}")
            printed_lines += 1

            normalized_assignment = assignment.strip().lower().replace(" ", "")
            matching_tables = find_matching_tables(connection, normalized_assignment)
            print(f"Found matching tables for assignment '{assignment}': {matching_tables}")

            if matching_tables:
                notification_deleted = False  # Flag to track if notification has been deleted

                for table_name in matching_tables:
                    print(f"Accessing table: {table_name}")
                    try:
                        coordinates_data = get_coordinates_from_table(connection, table_name)

                        if coordinates_data:
                            print(f"Retrieved coordinates from {table_name}: {coordinates_data}")

                            # Process each coordinate
                            for coord in coordinates_data:
                                # Strip any newline characters and split the coordinates
                                try:
                                    lat, lon = map(float, coord[0].strip().split(','))
                                except ValueError:
                                    print(f"Invalid coordinate format: {coord[0]}")
                                    continue  # Skip invalid coordinates

                                geofence_coordinates = (lat, lon)

                                device_location = get_device_location(address)
                                print(f"Device location for {target_name}: {device_location}")

                                if device_location and is_within_geofence(device_location, geofence_coordinates):
                                    if not notification_deleted:
                                        delete_notification(connection, target_name)  # Delete the notification
                                        notification_deleted = True  # Set the flag to True
                                        print(f"Deleted notification for {target_name}.")
                                else:
                                    full_address = reverse_geocode(address)
                                    if full_address == "Address not found":
                                        print(f"Ignoring notification for {target_name}: Address not found.")
                                        printed_lines += 1
                                        continue
                                    status = f"Outside Geofence - {full_address}"
                                    insert_or_update_notification(connection, target_name, status)
                        else:
                            print(f"No coordinates found for assignment table: {table_name}")
                            printed_lines += 1

                    except Error as e:
                        print(f"Error accessing table {table_name}: {e}")
                        printed_lines += 1
            else:
                print(f"No matching tables found for assignment: {assignment}")
                printed_lines += 1

            if printed_lines >= 100:
                clear_console()
                printed_lines = 0

        connection.close()  # Close the connection after processing all devices
        time.sleep(120)  # Wait for 120 seconds before the next iteration

if __name__ == "__main__":
    main()  # Start the geofencing process
