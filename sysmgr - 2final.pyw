import subprocess
import time
from PIL import Image, ImageDraw
import pystray
from pystray import MenuItem, Icon, Menu
import threading
import tkinter as tk
from tkinter import messagebox
import os
import platform
import psutil  # Import psutil for process management

# Load the image for the icon
image_path = "Assets/MDC LOGO.png"
image = Image.open(image_path)

# Dictionary to hold the processes
processes = {
    "Aika": None,
    "Komtrax": None,
    "Geofence": None  # Added Geofence process
}

# Event to control the update loop
stop_event = threading.Event()

# Initialize the status_labels dictionary
status_labels = {}

def create_image(status):
    """Create an image for the system tray icon based on the status."""
    icon_image = image.copy()
    draw = ImageDraw.Draw(icon_image)
    if status == "running":
        draw.rectangle([0, 0, 64, 64], outline=(0, 255, 0), width=5)  # Green border for running
    else:
        draw.rectangle([0, 0, 64, 64], outline=(255, 0, 0), width=5)  # Red border for stopped
    
    return icon_image

def update_icon(icon):
    """Update the system tray icon based on the status of all scripts."""
    running_aika = processes["Aika"] is not None and processes["Aika"].poll() is None
    running_komtrax = processes["Komtrax"] is not None and processes["Komtrax"].poll() is None
    running_geofence = processes["Geofence"] is not None and processes["Geofence"].poll() is None
    
    # Update icon color
    if running_aika or running_komtrax or running_geofence:
        icon.icon = create_image("running")
    else:
        icon.icon = create_image("stopped")

    # Update menu items based on running status
    icon.menu = create_menu()
    update_status_labels()

def create_menu():
    """Create the menu for the system tray with color-coded items."""
    return Menu(
        MenuItem("Aika", Menu(
            MenuItem("AikaStart", on_clicked, enabled=processes["Aika"] is None),
            MenuItem("AikaStop", on_clicked, enabled=processes["Aika"] is not None),
            MenuItem("Open Aika Log", lambda icon, item: open_log_file("Aika"))
        )),
        MenuItem("Komtrax", Menu(
            MenuItem("KomtraxStart", on_clicked, enabled=processes["Komtrax"] is None),
            MenuItem("KomtraxStop", on_clicked, enabled=processes["Komtrax"] is not None),
            MenuItem("Open Komtrax Log", lambda icon, item: open_log_file("Komtrax"))
        )),
        MenuItem("Geofence", Menu(
            MenuItem("GeofenceStart", on_clicked, enabled=processes["Geofence"] is None),
            MenuItem("GeofenceStop", on_clicked, enabled=processes["Geofence"] is not None),
            MenuItem("Open Geofence Log", lambda icon, item: open_log_file("Geofence"))
        )),
        MenuItem("Show", show_window),  # Add Show option
        MenuItem("Exit", on_clicked),
    )

def open_log_file(process_name):
    """Open the log file for the specified process."""
    log_file_name = f"{process_name.lower()}.log"  # Assuming log files are named like 'aika.log'
    log_file_path = os.path.join("Logs", log_file_name)  # Construct the full path to the log file

    # Check if the log file exists before trying to open it
    if os.path.exists(log_file_path):
        if platform.system() == "Windows":
            os.startfile(log_file_path)  # Open log file in default text editor
        elif platform.system() == "Darwin":  # macOS
            subprocess.call(["open", log_file_path])
        else:  # Linux
            subprocess.call(["xdg-open", log_file_path])
    else:
        print(f"Log file {log_file_path} does not exist.")

def on_clicked(icon, item):
    """Handle menu item clicks."""
    global processes
    try:
        if str(item) == "AikaStart":
            if processes["Aika"] is None:
                processes["Aika"] = subprocess.Popen(['pythonw', 'aika - 3final.pyw'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                print("Aika started")
            else:
                print("Aika is already running")
        elif str(item) == "AikaStop":
            if processes["Aika"] is not None:
                processes["Aika"].terminate()
                processes["Aika"] = None
                print("Aika stopped")
            else:
                print("Aika is not running")
        elif str(item) == "KomtraxStart":
            if processes["Komtrax"] is None:
                processes["Komtrax"] = subprocess.Popen(['pythonw', 'komtrax - 2final.pyw'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                print("Komtrax started")
            else:
                print("Komtrax is already running")
        elif str(item) == "KomtraxStop":
            if processes["Komtrax"] is not None:
                processes["Komtrax"].terminate()
                processes["Komtrax"] = None
                print("Komtrax stopped")
            else:
                print("Komtrax is not running")
        elif str(item) == "GeofenceStart":
            if processes["Geofence"] is None:
                processes["Geofence"] = subprocess.Popen(['pythonw', 'geofence - 2final.pyw'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                print("Geofence started")
            else:
                print("Geofence is already running")
        elif str(item) == "GeofenceStop":
            if processes["Geofence"] is not None:
                processes["Geofence"].terminate()
                processes["Geofence"] = None
                print("Geofence stopped")
            else:
                print("Geofence is not running")
        elif str(item) == "Exit":
            # Terminate all running processes before exiting
            for key in processes:
                if processes[key] is not None:
                    processes[key].terminate()
                    processes[key] = None
                    print(f"{key} stopped")
            stop_event.set()  # Signal the update loop to stop
            kill_processes()  # Kill specified processes on exit
            icon.stop()
    except Exception as e:
        print(f"Error: {e}")

def update_status_labels():
    """Update the status labels for each process."""
    for process_name in processes:
        status = "Running" if processes[process_name] is not None and processes[process_name].poll() is None else "Stopped"
        status_labels[process_name].config(text=status)

def setup(icon):
    """Setup the icon and start the update loop."""
    icon.visible = True
    icon.on_double_click = show_window  # Set the double-click event
    update_loop(icon)

def update_loop(icon):
    """Update the icon and status labels in a loop."""
    if not stop_event.is_set():  # Check for stop event
        update_icon(icon)
        root.after(1000, update_loop, icon)  # Schedule the next update in 1 second

def show_window(icon, item):
    """Show the tkinter window when the icon is double-clicked or menu item is clicked."""
    print("Showing window...")  # Debugging line
    root.deiconify()  # Show the window
    root.attributes('-topmost', True)  # Bring the window to the front
    root.lift()  # Raise the window to the top
    root.focus_force()  # Focus on the window
    root.attributes('-topmost', False)  # Reset the topmost attribute

def on_closing():
    """Prompt the user to minimize to tray or exit."""
    if messagebox.askyesno("Close", "Do you want to minimize to tray instead of exiting?"):
        root.withdraw()  # Hide the window
    else:
        for key in processes:
            if processes[key] is not None:
                processes[key].terminate()
                processes[key] = None
                print(f"{key} stopped")
        stop_event.set()  # Signal the update loop to stop
        kill_processes()  # Kill specified processes on exit
        icon.stop()
        root.destroy()

# Function to kill specific processes
def kill_processes():
    for process in psutil.process_iter(['name']):
        try:
            if process.info['name'] in ['Chromedriver', 'chrome.exe', 'python', 'Google Chrome']:
                process.kill()
                print(f"Killed process: {process.info['name']}")
        except (psutil.NoSuchProcess, psutil.AccessDenied):
            continue

# Create the main tkinter window
root = tk.Tk()
root.title("GPS Scraper")
root.geometry("400x200")
root.protocol("WM_DELETE_WINDOW", on_closing)

# Create a frame for the buttons and status
button_frame = tk.Frame(root)
button_frame.pack(pady=10)

# Create buttons and status labels in a single line
for i, process_name in enumerate(processes.keys()):
    tk.Button(button_frame, text=f"Start {process_name}", command=lambda name=process_name: on_clicked(None, f"{name}Start")).grid(row=i, column=0, padx=5)
    tk.Button(button_frame, text=f"Stop {process_name}", command=lambda name=process_name: on_clicked(None, f"{name}Stop")).grid(row=i, column=1, padx=5)
    label = tk.Label(button_frame, text=f"{process_name}: Stopped")
    label.grid(row=i, column=2, padx=5)
    status_labels[process_name] = label

# Create and start the system tray icon
icon = Icon("test_icon", image, "GPS Scraper", menu=create_menu())
icon_thread = threading.Thread(target=icon.run, args=(setup,))
icon_thread.start()

# Start the tkinter main loop
root.mainloop()
