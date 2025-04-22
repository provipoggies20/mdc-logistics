import mysql.connector
from mysql.connector import Error
import pandas as pd
import pyproj
from tkinter import Tk
from tkinter import filedialog

# Define the transformation from PRS92 to WGS84
prs92_to_wgs84 = pyproj.Transformer.from_crs("EPSG:3123", "EPSG:4326", always_xy=True)

# Function to transform PRS92 coordinates to WGS84
def transform_prs92_to_wgs84(prs92_coords):
    wgs84_coords = prs92_to_wgs84.transform(prs92_coords[0], prs92_coords[1])
    return wgs84_coords[1], wgs84_coords[0]

# Function to open a file dialog to select a CSV file
def open_file():
    Tk().withdraw()  # Prevents the root window from appearing
    file_path = filedialog.askopenfilename(title="Select a CSV file", filetypes=[("CSV files", "*.csv")])
    return file_path

# Function to get MySQL connection
def get_mysql_connection():
    return mysql.connector.connect(
        host='localhost',
        database='mdc',  # Change to your database name
        user='root',      # Change to your MySQL username
        password=''       # Change to your MySQL password
    )

# Function to get table names from the database
def get_table_names(cursor):
    cursor.execute("SHOW TABLES")
    return [table[0] for table in cursor.fetchall()]

# Function to process the CSV file
def process_csv(file_path, db_connection, table_name):
    df = pd.read_csv(file_path)

    if 'Easting' not in df.columns or 'Northing' not in df.columns:
        print("CSV must contain 'Easting' and 'Northing' columns.")
        return

    wgs84_coordinates = []

    for index, row in df.iterrows():
        easting = row['Easting']
        northing = row['Northing']
        prs92_coordinates = (easting, northing)
        swapped_wgs84_coordinates = transform_prs92_to_wgs84(prs92_coordinates)
        wgs84_coordinates.append(swapped_wgs84_coordinates)

    df['WGS84_Latitude'] = [coord[0] for coord in wgs84_coordinates]
    df['WGS84_Longitude'] = [coord[1] for coord in wgs84_coordinates]

    # Insert transformed data into the database
    insert_data_into_db(df, db_connection, table_name)

def insert_data_into_db(df, db_connection, table_name):
    cursor = db_connection.cursor()
    
    # Create table if it doesn't exist
    cursor.execute(f'''
    CREATE TABLE IF NOT EXISTS {table_name} (
        id INT AUTO_INCREMENT PRIMARY KEY,
        site VARCHAR(255),
        coordinates VARCHAR(255)
    )
    ''')

    # Insert data into the table
    for index, row in df.iterrows():
        coordinates = f"{row['WGS84_Latitude']}, {row['WGS84_Longitude']}"
        
        try:
            cursor.execute(f'''
            INSERT INTO {table_name} (site, coordinates) VALUES (%s, %s)
            ''', (row['site'], coordinates))
        except Error as e:
            print(f"Error inserting row {index}: {e}")

    db_connection.commit()
    print(f"Inserted {cursor.rowcount} records into the database.")

# Main function to run the program
def main():
    file_path = open_file()
    if not file_path:
        print("No file selected.")
        return

    # Connect to the MySQL database
    try:
        db_connection = get_mysql_connection()
        cursor = db_connection.cursor()

        # Get table names
        table_names = get_table_names(cursor)
        print("Available tables:")
        for table in table_names:
            print(f"- {table}")

        # Manual input for table selection
        selected_table = input("Enter the name of the table you want to use: ")

        if selected_table not in table_names:
            print("Invalid table name.")
            return

        # Process the CSV file
        process_csv(file_path, db_connection, selected_table)

    except Error as e:
        print(f"Error while connecting to MySQL: {e}")
    finally:
        if db_connection.is_connected():
            db_connection.close()
            print("MySQL connection is closed")

if __name__ == "__main__":
    main()
