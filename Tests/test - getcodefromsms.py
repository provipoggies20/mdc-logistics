import imaplib
import email
from email.header import decode_header
import re
import time

def get_verification_code(email_user, email_pass):
    # Connect to the email server
    mail = imaplib.IMAP4_SSL("imap.gmail.com")
    mail.login(email_user, email_pass)
    mail.select("inbox")
    
    # Search for emails from your own address
    status, messages = mail.search(None, '(FROM "{}")'.format(email_user))
    
    if status != 'OK':
        return None

    email_ids = messages[0].split()

    if not email_ids:
        return None

    for email_id in reversed(email_ids):
        res, msg = mail.fetch(email_id, "(RFC822)")
        msg = email.message_from_bytes(msg[0][1])
        subject, encoding = decode_header(msg["Subject"])[0]
        if isinstance(subject, bytes):
            subject = subject.decode(encoding if encoding else 'utf-8')

        body = get_email_body(msg)

        # Use regex to find the verification code in the email body
        code_match = re.search(r'Use verification code (\d{6})', body)
        if code_match:
            return code_match.group(1)  # Return the found code

    return None

def get_email_body(msg):
    if msg.is_multipart():
        for part in msg.walk():
            if part.get_content_type() == "text/plain":
                return part.get_payload(decode=True).decode()
    else:
        return msg.get_payload(decode=True).decode()
    return ""

# Example usage
email_user = "maxiprodc.gps1@gmail.com"  # Replace with your email
email_pass = "hlcm fwdq mgwq eclv"  # Replace with your App Password

verification_code = None
start_time = time.time()
timeout = 300  # 5 minutes timeout

while time.time() - start_time < timeout:
    verification_code = get_verification_code(email_user, email_pass)
    if verification_code:
        print(verification_code)  # Only display the verification code
        break
    time.sleep(10)  # Wait for 10 seconds before checking again

if not verification_code:
    print("No Email Verification code found within the timeout period.")
