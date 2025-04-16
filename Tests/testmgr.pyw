import subprocess
import sys
import time
from PIL import Image, ImageDraw
import pystray
from pystray import MenuItem, Icon, Menu
import threading

def create_image(color):
    """Create an image for the system tray icon based on the color."""
    image = Image.new('RGB', (64, 64), color)  # Background color
    dc = ImageDraw.Draw(image)
    dc.ellipse((0, 0, 64, 64), fill=color)  # Circle with the specified color
    return image

def check_service_status(service):
    """Check if a service is running."""
    result = subprocess.run(['xampp-control.exe', 'status', service], capture_output=True, text=True)
    return 'running' in result.stdout.lower()

def update_icon():
    """Update the icon color based on the service status."""
    while True:
        if check_service_status('apache'):
            icon.icon = create_image((0, 255, 0))  # Green for running
        else:
            icon.icon = create_image((255, 0, 0))  # Red for stopped

        if check_service_status('mysql'):
            icon.icon = create_image((0, 255, 0))  # Green for running
        else:
            icon.icon = create_image((255, 0, 0))  # Red for stopped

        time.sleep(5)  # Check every 5 seconds

def on_clicked(icon, item):
    """Handle menu item clicks."""
    if str(item) == "Start Apache":
        subprocess.Popen(['xampp-control.exe', 'start', 'apache'])
    elif str(item) == "Stop Apache":
        subprocess.Popen(['xampp-control.exe', 'stop', 'apache'])
    elif str(item) == "Start MySQL":
        subprocess.Popen(['xampp-control.exe', 'start', 'mysql'])
    elif str(item) == "Stop MySQL":
        subprocess.Popen(['xampp-control.exe', 'stop', 'mysql'])
    elif str(item) == "Exit":
        icon.stop()

# Create the system tray icon
icon = Icon("XAMPP", create_image((255, 0, 0)), menu=Menu(
    MenuItem("Start Apache", on_clicked),
    MenuItem("Stop Apache", on_clicked),
    MenuItem("Start MySQL", on_clicked),
    MenuItem("Stop MySQL", on_clicked),
    MenuItem("Exit", on_clicked),
))

# Start the status update thread
threading.Thread(target=update_icon, daemon=True).start()

# Run the icon
icon.run()
