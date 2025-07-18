from http.server import BaseHTTPRequestHandler, HTTPServer
import requests

NGROK_URL = "https://4b7d-136-158-39-247.ngrok-free.app"
PORT = 8080

class ProxyHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        try:
            headers = {"ngrok-skip-browser-warning": "true"}
            response = requests.get(f"{NGROK_URL}{self.path}", headers=headers, timeout=10)
            self.send_response(response.status_code)
            for key, value in response.headers.items():
                self.send_header(key, value)
            self.end_headers()
            self.wfile.write(response.content)
        except Exception as e:
            self.send_response(500)
            self.end_headers()
            self.wfile.write(f"Proxy error: {str(e)}".encode())

    def do_POST(self):
        self.do_GET()  # Handle POST similarly (customize if needed)

if __name__ == "__main__":
    server = HTTPServer(("0.0.0.0", PORT), ProxyHandler)
    print(f"Ngrok proxy running on http://localhost:{PORT}")
    print(f"Forwarding to {NGROK_URL}")
    print(f"For QR code access, use http://<public-ip>:{PORT} (find public IP with 'curl ifconfig.me')")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        server.server_close()
        print("Proxy stopped")
