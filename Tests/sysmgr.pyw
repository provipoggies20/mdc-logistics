import subprocess
import sys
import time
import threading
from PIL import Image, ImageDraw
import pystray
from pystray import MenuItem, Icon

# ==========================
# Scripts Configuration
# ==========================
scripts = [
    {"name": "Aika", "path": "aika - 3final.pyw"},
    {"name": "Komtrax", "path": "komatsu - 2final.pyw"},
    {"name": "Geofencing", "path": "geofence.pyw"}
]

# ==========================
# Processes Dictionary
# ==========================
processes = {script["name"]: None for script in scripts}

# ==========================
f# Function Definitions
# ==========================
def create_image(width, height, status):
    """Create an image for the system tray icon based on the status."""
    image = Image.new('RGB', (width, height), (255, 255, 255))  # White background
    dc = ImageDraw.Draw(image)
    
    if status == "running":
        dc.ellipse((0, 0, width, height), fill=(0, 255, 0))  # Green circle for running
    else:
        dc.ellipse((0, 0, width, height), fill=(255, 0, 0))  # Red circle for stopped
    
    return image

def run_script(script_name):
    """Run the specified script."""
    global processes
    if processes[script_name] is None:
        script_path = next(script["path"] for script in scripts if script["name"] == script_name)
        processes[script_name] = subprocess.Popen(['pythonw', script_path], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        print(f"{script_name} started.")
    else:
        print(f"{script_name} is already running.")

def stop_script(script_name):
    """Stop the running script."""
    global processes
    if processes[script_name] is not None:
        processes[script_name].terminate()  # Terminate the script if running
        processes[script_name] = None
        print(f"{script_name} stopped.")
    else:
        print(f"No script is running for {script_name}.")

def check_status(script_name):
    """Check if the script is still running."""
    global processes
    if processes[script_name] is not None:
        return processes[script_name].poll() is None  # Returns True if the process is running
    return False

def update_icon(icon):
    """Update the system tray icon based on the status of all scripts."""
    running_scripts = any(check_status(script["name"]) for script in scripts)
    icon.icon = create_image(64, 64, "running" if running_scripts else "stopped")

def on_quit(icon, item):
    """Handle the quit action."""
    for script in scripts:
        stop_script(script["name"])  # Stop all scripts if running
    icon.stop()

def setup(icon):
    """Setup the system tray icon and update it periodically."""
    icon.visible = True
    while True:
        update_icon(icon)
        time.sleep(1)  # Check status every second

def create_menu():
    """Create the menu for the system tray."""
    menu_items = []
    for script in scripts:
        menu_items.append(MenuItem(f"Run {script['name']}", lambda _, name=script['name']: run_script(name)))
        menu_items.append(MenuItem(f"Stop {script['name']}", lambda _, name=script['name']: stop_script(name)))
    menu_items.append(MenuItem("Quit", on_quit))
    return menu_items

# ==========================
# Main Function
# ==========================
def main():
    """Main function to create the system tray icon."""
    icon = Icon("script_manager", create_image(64, 64, "stopped"), "Script Manager", menu=pystray.Menu(*create_menu()))

    # Start the icon in a separate thread
    threading.Thread(target=setup, args=(icon,), daemon=True).start()
    icon.run()

if __name__ == "__main__":
    main()
