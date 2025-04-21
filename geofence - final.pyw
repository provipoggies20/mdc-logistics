import os
import mysql.connector
from mysql.connector import Error
from geopy.geocoders import Nominatim
from geopy.exc import GeocoderTimedOut
from geopy.distance import great_circle
import time
import logging
import math

# Function to set up logging
def setup_logging():
    current_directory = os.path.dirname(os.path.abspath(__file__))
    logs_directory = os.path.join(current_directory, 'Logs')
    os.makedirs(logs_directory, exist_ok=True)
    log_file_path = os.path.join(logs_directory, 'geofence.log')

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
            password=''  # Update with your MySQL password
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
    cursor.execute("SELECT target_name, address, latitude, longitude FROM devices")
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

# Function to check if a point is within a geofence defined by a coordinate
def is_within_geofence(device_location, geofence_coordinates, radius=50000):  # Default radius is 50 km
    distance = great_circle(device_location, geofence_coordinates).meters
    return distance <= radius

# Function to get the device location based on the address with retry logic
def get_device_location(address, retries=3, wait_time=2):
    geolocator = Nominatim(user_agent="myGeocoder")
    for attempt in range(retries):
        try:
            location = geolocator.geocode(address, timeout=5)
            if location:
                return (location.latitude, location.longitude)
            else:
                print(f"Location not found for address: {address}")
                return None
        except GeocoderTimedOut:
            print(f"Geocoder service timed out on attempt {attempt + 1}. Retrying...")
            time.sleep(wait_time)  # Wait before retrying
        except Exception as e:
            print(f"An error occurred: {e}. Retrying...")
            time.sleep(wait_time)  # Wait before retrying
    print(f"Failed to get location for address: {address} after {retries} attempts.")
    return None

# Function to reverse geocode an address to get the full address with retry logic
def reverse_geocode(address, retries=3, wait_time=2):
    geolocator = Nominatim(user_agent="myGeocoder")
    for attempt in range(retries):
        try:
            location = geolocator.geocode(address, timeout=5)
            if location:
                return location.address
            else:
                return "Address not found"
        except GeocoderTimedOut:
            print(f"Geocoder service timed out on attempt {attempt + 1}. Retrying...")
            time.sleep(wait_time)  # Wait before retrying
        except Exception as e:
            print(f"An error occurred: {e}. Retrying...")
            time.sleep(wait_time)  # Wait before retrying
    print(f"Failed to reverse geocode address: {address} after {retries} attempts.")
    return None

# Function to delete a notification from the database
def delete_notification(connection, target_name):
    cursor = connection.cursor()
    delete_query = "DELETE FROM geofence WHERE target_name = %s"
    cursor.execute(delete_query, (target_name,))
    connection.commit()
    print(f"Deleted notification for {target_name}.")

# Function to insert or update a notification in the database
def insert_or_update_notification(connection, target_name, status):
    cursor = connection.cursor()
    insert_query = '''
    INSERT INTO geofence (target_name, status, timestamp) 
    VALUES (%s, %s, NOW())
    ON DUPLICATE KEY UPDATE status = %s, timestamp = NOW()
    '''
    cursor.execute(insert_query, (target_name, status, status))
    connection.commit()
    print(f"Inserted/Updated notification for {target_name} with status: {status}.")

# Function to retrieve the assignment for a specific device
def get_assignment_for_device(connection, target_name):
    cursor = connection.cursor()
    cursor.execute("SELECT assignment FROM devices WHERE target_name = %s", (target_name,))
    result = cursor.fetchone()
    if result:
        return result[0]  # Return the assignment if found
    else:
        print(f"No assignment found for device {target_name}.")  # Log if no assignment is found
        return None  # Return None if no assignment is found

def calculate_distance(coord1, coord2):
    lat1, lon1 = coord1
    lat2, lon2 = coord2
    radius = 6371  # Radius of the Earth in kilometers

    dlat = math.radians(lat2 - lat1)
    dlon = math.radians(lon2 - lon1)
    a = math.sin(dlat / 2) * math.sin(dlat / 2) + math.cos(math.radians(lat1)) * math.cos(math.radians(lat2)) * math.sin(dlon / 2) * math.sin(dlon / 2)
    c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a))
    distance = radius * c

    return distance

# Main function to run the geofencing logic
def main():
    setup_logging()  # Set up logging
    printed_lines = 0  # Initialize printed lines counter
    geofence_radius = 5  # 5 kilometer radius

    try:
        while True:  # Infinite loop
            connection = create_connection()  # Create a new connection for each iteration
            if connection is None:
                print("Failed to connect to the database. Retrying in 20 seconds...")
                time.sleep(20)
                continue  # Retry the connection

            create_notifications_table(connection)
            devices = get_devices(connection)
            print(f"Retrieved {len(devices)} devices from the database.")

            for target_name, address, latitude, longitude in devices:
                if latitude is None or longitude is None:
                    print(f"Skipping device {target_name} due to missing coordinates.")
                    printed_lines += 1
                    continue

                print(f"Processing device: {target_name} with address: {address} and coordinates: ({latitude}, {longitude})")
                printed_lines += 1

                # Get the assignment for the device
                assignment = get_assignment_for_device(connection, target_name)

                if not assignment:
                    print(f"Skipping device {target_name} due to empty assignment.")
                    printed_lines += 1
                    continue

                normalized_assignment = assignment.strip().lower().replace(" ", "")
                matching_tables = find_matching_tables(connection, normalized_assignment)
                print(f"Found matching tables for assignment '{assignment}': {matching_tables}")

                device_location = get_device_location(address)
                print(f"Device location for {target_name}: {device_location}")

                if device_location:
                    geofence_coordinates = (latitude, longitude)
                    if is_within_geofence(device_location, geofence_coordinates):
                        delete_notification(connection, target_name)  # Delete the notification if within geofence
                    else:
                        full_address = reverse_geocode(address)
                        if full_address == "Address not found":
                            print(f"Ignoring notification for {target_name}: Address not found.")
                            printed_lines += 1
                            continue
                        status = f"Outside Geofence - {full_address}"
                        insert_or_update_notification(connection, target_name, status)

            connection.close()  # Close the database connection
            print("Sleeping for 60 seconds before the next check...")
            time.sleep(60)  # Wait before the next iteration

    except KeyboardInterrupt:
        print("Program interrupted. Cleaning up...")
    finally:
        print("Exiting the program.")

# Entry point of the script
if __name__ == "__main__":
    main()
