import smtplib
from email.mime.text import MIMEText

def send_sms_via_email(phone_number, message, smtp_server, smtp_port, smtp_user, smtp_password):
    # Create the email content
    msg = MIMEText(message)
    msg['From'] = smtp_user
    msg['To'] = f"{phone_number}@tm.com.ph"  # Globe SMS gateway
    msg['Subject'] = "SMS Notification"

    try:
        # Connect to the SMTP server
        with smtplib.SMTP(smtp_server, smtp_port) as server:
            server.starttls()  # Upgrade the connection to a secure encrypted SSL/TLS connection
            server.login(smtp_user, smtp_password)  # Log in to the SMTP server
            server.sendmail(smtp_user, [msg['To']], msg.as_string())  # Send the email
            print("SMS sent successfully!")
    except Exception as e:
        print(f"Failed to send SMS: {e}")

# Example usage
if __name__ == "__main__":
    # Replace with your SMTP server details
    SMTP_SERVER = 'smtp.gmail.com'  # e.g., smtp.gmail.com for Gmail
    SMTP_PORT = 587  # Common port for TLS
    SMTP_USER = 'maxiprodc.gps1@gmail.com'  # Your email address
    SMTP_PASSWORD = 'gosc bvup dtpq zpsv'  # Your email password

    # Phone number and message
    phone_number = '9269331860'  # Replace with the recipient's Globe phone number
    message = "Hello! This is a test message sent via email to SMS."

    # Send the SMS
    send_sms_via_email(phone_number, message, SMTP_SERVER, SMTP_PORT, SMTP_USER, SMTP_PASSWORD)
