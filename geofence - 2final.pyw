import mysql.connector
from mysql.connector import Error
import time
import os
import logging
import math

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
    cursor.execute("SELECT target_name, address, latitude, longitude, assignment FROM devices")
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

# Function to retrieve coordinates and site from the corresponding assignment table
def get_coordinates_and_site_from_table(connection, table_name):
    cursor = connection.cursor()
    query = f"SELECT coordinates, site FROM {table_name}"  # Selecting both coordinates and site
    cursor.execute(query)
    return cursor.fetchall()  # Returns a list of tuples containing coordinates and site

# Haversine function to calculate distance between two coordinates
def haversine(coord1, coord2):
    R = 6371.0  # Radius of the Earth in kilometers
    lat1, lon1 = coord1
    lat2, lon2 = coord2

    # Convert latitude and longitude from degrees to radians
    lat1_rad = math.radians(lat1)
    lon1_rad = math.radians(lon1)
    lat2_rad = math.radians(lat2)
    lon2_rad = math.radians(lon2)

    # Haversine formula
    dlon = lon2_rad - lon1_rad
    dlat = lat2_rad - lat1_rad
    a = math.sin(dlat / 2)**2 + math.cos(lat1_rad) * math.cos(lat2_rad) * math.sin(dlon / 2)**2
    c = 2 * math.asin(math.sqrt(a))
    return R * c  # Distance in kilometers

# Function to check if a point is within a geofence
def is_within_geofence(device_location, geofence_coordinates, radius=5):  # Change radius to 5 km
    distance = haversine(device_location, geofence_coordinates)
    return distance <= radius

# Function to insert or update a notification in the database
def insert_or_update_notification(connection, target_name, status):
    cursor = connection.cursor()
    
    # Check if a notification for the target_name already exists
    check_query = "SELECT COUNT(*) FROM geofence WHERE target_name = %s"
    cursor.execute(check_query, (target_name,))
    count = cursor.fetchone()[0]

    if count > 0:
        # Update the existing record
        update_query = "UPDATE geofence SET status = %s, timestamp = NOW() WHERE target_name = %s"
        cursor.execute(        update_query, (status, target_name))
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
def get_device_location(latitude, longitude):
    return (latitude, longitude)

# Function to delete a notification from the database
def delete_notification(connection, target_name):
    cursor = connection.cursor()
    delete_query = "DELETE FROM geofence WHERE target_name = %s"
    cursor.execute(delete_query, (target_name,))
    connection.commit()

# Function to retrieve komtrax devices and their assignments from the database
def get_komtrax_devices(connection):
    cursor = connection.cursor()
    cursor.execute("SELECT target_name, address, latitude, longitude, assignment FROM komtrax")
    return cursor.fetchall()    

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

        # Retrieve devices from both tables
        devices = get_devices(connection)
        komtrax_devices = get_komtrax_devices(connection)
        print(f"Retrieved {len(devices)} devices from the devices table.")
        print(f"Retrieved {len(komtrax_devices)} devices from the komtrax table.")

        # Process devices from the devices table
        for target_name, address, latitude, longitude, assignment in devices:
            if not assignment:
                print(f"Skipping device {target_name} due to empty assignment.")
                printed_lines += 1
                continue

            print(f"Processing device: {target_name} with address: {address}, Assignment: {assignment}")
            printed_lines += 1

            device_location = get_device_location(latitude, longitude)

            normalized_assignment = assignment.strip().lower().replace(" ", "")
            matching_tables = find_matching_tables(connection, normalized_assignment)
            print(f"Found matching tables for assignment '{assignment}': {matching_tables}")

            if matching_tables:
                notification_deleted = False  # Flag to track if notification has been deleted

                for table_name in matching_tables:
                    print(f"Accessing table: {table_name}")
                    try:
                        coordinates_data = get_coordinates_and_site_from_table(connection, table_name)

                        if coordinates_data:
                            print(f"Retrieved coordinates from {table_name}: {coordinates_data}")

                            # Process each coordinate and site
                            for coord in coordinates_data:
                                if notification_deleted:  # Check if notification has already been deleted
                                    break  # Stop processing further coordinates for this device

                                # Extract latitude and longitude from the coordinates string
                                try:
                                    lat, lon = map(float, coord[0].strip().split(','))
                                    site = coord[1]  # Get the site
                                except ValueError:
                                    print(f"Invalid coordinate format: {coord[0]}")
                                    # If coordinates are invalid, delete the notification and ignore
                                    delete_notification(connection, target_name)
                                    print(f"Deleted notification for {target_name} due to invalid coordinates.")
                                    notification_deleted = True  # Set the flag to True
                                    break  # Stop processing further coordinates

                                geofence_coordinates = (lat, lon)

                                # Use the device_location directly
                                if is_within_geofence(device_location, geofence_coordinates):
                                    if not notification_deleted:
                                        delete_notification(connection, target_name)  # Delete the notification
                                        notification_deleted = True  # Set the flag to True
                                        print(f"Deleted notification for {target_name} at {coord[1]}.")
                                        break  # Stop processing further coordinates
                                else:
                                    # If the device is outside the geofence, insert/update notification
                                    status = f"Outside Geofence - {address}, Site: {site}"
                                    insert_or_update_notification(connection, target_name, status)

                                    # Check if the address indicates "Address not found"
                                    if "Address not found" in address:
                                        delete_notification(connection, target_name)  # Delete the notification
                                        print(f"Deleted notification for {target_name} due to address not found.")
                                        notification_deleted = True  # Set the flag to True
                                        break  # Stop processing further coordinates
                        else:
                            print(f"No coordinates found for assignment table: {table_name}")
                            printed_lines += 1

                    except Error as e:
                        print(f"Error accessing table {table_name}: {e}")
                        printed_lines += 1

            else:
                print(f"No matching tables found for assignment: {assignment}")
                printed_lines += 1

            # Process devices from the devices table
            for target_name, address, latitude, longitude, assignment in komtrax_devices:
                if not assignment:
                    print(f"Skipping device {target_name} due to empty assignment.")
                    printed_lines += 1
                    continue

                print(f"Processing device: {target_name} with address: {address}, Assignment: {assignment}")
                printed_lines += 1

                device_location = get_device_location(latitude, longitude)

                normalized_assignment = assignment.strip().lower().replace(" ", "")
                matching_tables = find_matching_tables(connection, normalized_assignment)
                print(f"Found matching tables for assignment '{assignment}': {matching_tables}")

                if matching_tables:
                    notification_deleted = False  # Flag to track if notification has been deleted

                    for table_name in matching_tables:
                        print(f"Accessing table: {table_name}")
                        try:
                            coordinates_data = get_coordinates_and_site_from_table(connection, table_name)

                            if coordinates_data:
                                print(f"Retrieved coordinates from {table_name}: {coordinates_data}")

                                # Process each coordinate and site
                                for coord in coordinates_data:
                                    if notification_deleted:  # Check if notification has already been deleted
                                        break  # Stop processing further coordinates for this device

                                    # Extract latitude and longitude from the coordinates string
                                    try:
                                        lat, lon = map(float, coord[0].strip().split(','))
                                        site = coord[1]  # Get the site
                                    except ValueError:
                                        print(f"Invalid coordinate format: {coord[0]}")
                                        # If coordinates are invalid, delete the notification and ignore
                                        delete_notification(connection, target_name)
                                        print(f"Deleted notification for {target_name} due to invalid coordinates.")
                                        notification_deleted = True  # Set the flag to True
                                        break  # Stop processing further coordinates

                                    geofence_coordinates = (lat, lon)

                                    # Use the device_location directly
                                    if is_within_geofence(device_location, geofence_coordinates):
                                        if not notification_deleted:
                                            delete_notification(connection, target_name)  # Delete the notification
                                            notification_deleted = True  # Set the flag to True
                                            print(f"Deleted notification for {target_name} at {coord[1]}.")
                                            break  # Stop processing further coordinates
                                    else:
                                        # If the device is outside the geofence, insert/update notification
                                        status = f"Outside Geofence - {address}, Site: {site}"
                                        insert_or_update_notification(connection, target_name, status)

                                        # Check if the address indicates "Address not found"
                                        if "Address not found" in address:
                                            delete_notification(connection, target_name)  # Delete the notification
                                            print(f"Deleted notification for {target_name} due to address not found.")
                                            notification_deleted = True  # Set the flag to True
                                            break  # Stop processing further coordinates
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
        print("Completed processing all devices. Retrying in 120 seconds...")  # Indicate completion
        time.sleep(120)  # Wait for 120 seconds before the next iteration

if __name__ == "__main__":
    main()  # Call the main function to start the process
