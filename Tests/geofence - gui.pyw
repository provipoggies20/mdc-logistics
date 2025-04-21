import tkinter as tk
from tkinter import messagebox
import matplotlib.pyplot as plt
from matplotlib.patches import Polygon as MplPolygon
import numpy as np

# Function to plot the polygons and device locations
def plot_polygons_and_device(polygons, device_location):
    fig, ax = plt.subplots()

    # Plot each polygon
    for polygon in polygons:
        poly = MplPolygon(polygon, closed=True, fill=None, edgecolor='blue', linewidth=2)
        ax.add_patch(poly)

    # Plot the device location
    device_x, device_y = device_location
    ax.plot(device_x, device_y, 'ro')  # 'ro' means red color, circle marker
    ax.text(device_x, device_y, ' Device', fontsize=12, verticalalignment='bottom')

    # Set limits and labels
    ax.set_xlim(120.9, 121.1)  # Adjust these limits based on your coordinates
    ax.set_ylim(15.3, 15.4)     # Adjust these limits based on your coordinates
    ax.set_xlabel('Longitude')
    ax.set_ylabel('Latitude')
    ax.set_title('Geofence Visualization')

    plt.grid()
    plt.show()

# Function to handle button click
def on_plot_button_click():
    # Example polygons (list of lists of (lat, lon) tuples)
    polygons = [
        [(15.307089, 121.022036), (15.307478, 121.022936), (15.307694, 121.020750)],
        [(15.308283, 121.021064), (15.308767, 121.017739), (15.309339, 121.018522)]
    ]
    
    # Example device location (lat, lon)
    device_location = (15.3175023, 120.9364845)

    plot_polygons_and_device(polygons, device_location)

# Create the main window
root = tk.Tk()
root.title("Geofence Visualization")

# Create a button to plot the polygons
plot_button = tk.Button(root, text="Plot Polygons and Device", command=on_plot_button_click)
plot_button.pack(pady=20)

# Run the application
root.mainloop()
