import os
import json
import requests
import logging
from flask import Flask, request, jsonify
from mysql.connector.pooling import MySQLConnectionPool
from sentence_transformers import SentenceTransformer
import spacy
from spacy.matcher import Matcher
from dotenv import load_dotenv
import numpy as np

# Configure logging
logging.basicConfig(
    level=logging.DEBUG,
    filename='flask.log',
    format='%(asctime)s %(levelname)s: %(message)s'
)

load_dotenv()
logging.info(f"Loaded environment variables: DEEPSEEK_API_KEY={'*' * 8}, LILYPAD_API_KEY={'*' * 8}, "
             f"DB_HOST={os.getenv('DB_HOST', 'Not set')}, DB_USER={os.getenv('DB_USER', 'Not set')}")

app = Flask(__name__)

# Database connection pool
try:
    pool_config = {
        "pool_name": "mdc_pool",
        "pool_size": 5,
        "host": os.getenv('DB_HOST', 'localhost'),
        "user": os.getenv('DB_USER', 'joshuagarcia'),
        "password": os.getenv('DB_PASSWORD', 'joshuagarcia'),
        "database": os.getenv('DB_NAME', 'mdc')
    }
    pool = MySQLConnectionPool(**pool_config)
    logging.info("Database connection pool initialized successfully")
except Exception as e:
    logging.error(f"Failed to initialize database connection pool: {str(e)}")

# Intent classification
intent_labels = [
    "maintenance_query", "total_vehicles_query", "status_query", "overdue_query",
    "assignment_query", "pending_query", "general_query", "specific_vehicle_query",
    "location_query", "edit_history_query"
]
try:
    semantic_model = SentenceTransformer("all-MiniLM-L6-v2")
    logging.info("SentenceTransformer model loaded successfully")
except Exception as e:
    logging.error(f"Failed to load SentenceTransformer: {str(e)}")
    semantic_model = None

known_queries = {
    "specific_vehicle_query": ["What is the status of PC200-10M0?", "Details for vehicle MDT - NEC 9786"],
    "location_query": ["Vehicles in Amlan", "Where is the Bolo substation?"],
    "edit_history_query": ["Who approved the last edit?", "Show recent edits"]
}

# Entity extraction
try:
    nlp = spacy.load("en_core_web_sm")
    matcher = Matcher(nlp.vocab)
    logging.info("Spacy model loaded successfully")
except Exception as e:
    logging.error(f"Failed to load Spacy model: {str(e)}")
    nlp = None
    matcher = None

def get_vehicle_names():
    try:
        conn = pool.get_connection()
        cursor = conn.cursor(dictionary=True)
        query = "SELECT target_name FROM devices UNION SELECT target_name FROM komtrax"
        cursor.execute(query)
        results = cursor.fetchall()
        cursor.close()
        conn.close()
        return [row["target_name"] for row in results]
    except Exception as e:
        logging.error(f"Failed to fetch vehicle names: {str(e)}")
        return []

vehicle_names = get_vehicle_names()
if vehicle_names and matcher:
    patterns = [[{"LOWER": {"IN": [name.lower() for name in vehicle_names]}}]]
    matcher.add("VEHICLE", patterns)

def extract_entities(message):
    if not nlp or not matcher:
        logging.warning("Spacy or matcher not available, skipping entity extraction")
        return {"vehicle": None, "location": None}
    
    doc = nlp(message)
    entities = {"vehicle": None, "location": None}
    matches = matcher(doc)
    for match_id, start, end in matches:
        if nlp.vocab.strings[match_id] == "VEHICLE":
            entities["vehicle"] = doc[start:end].text
    for ent in doc.ents:
        if ent.label_ in ["GPE", "LOC"]:
            entities["location"] = ent.text
    return entities

def extract_intent_semantic(message):
    if not semantic_model:
        logging.warning("Semantic model not available, defaulting to general_query")
        return "general_query"
    
    message_embedding = semantic_model.encode(message)
    max_similarity = -1
    best_intent = "general_query"
    for intent, examples in known_queries.items():
        example_embeddings = semantic_model.encode(examples)
        similarities = np.dot(example_embeddings, message_embedding) / (
            np.linalg.norm(example_embeddings, axis=1) * np.linalg.norm(message_embedding)
        )
        if similarities.max() > max_similarity and similarities.max() > 0.7:
            max_similarity = similarities.max()
            best_intent = intent
    return best_intent

def extract_intent(message):
    return extract_intent_semantic(message)

def query_database(intent, message, vehicle_data, entities):
    try:
        conn = pool.get_connection()
        cursor = conn.cursor(dictionary=True)
        if intent == "specific_vehicle_query":
            vehicle_name = entities.get("vehicle")
            if not vehicle_name:
                return "Please specify a vehicle name."
            query = """
                SELECT target_name, equipment_type, physical_status, assignment, next_pms_date
                FROM devices WHERE target_name = %s
                UNION ALL
                SELECT target_name, equipment_type, physical_status, assignment, next_pms_date
                FROM komtrax WHERE target_name = %s
            """
            cursor.execute(query, (vehicle_name, vehicle_name))
            result = cursor.fetchone()
            if result:
                return f"Vehicle {result['target_name']}: Type: {result['equipment_type']}, Status: {result['physical_status']}, Assignment: {result['assignment'] or 'None'}, Next Maintenance: {result['next_pms_date'] or 'N/A'}"
            return f"Vehicle '{vehicle_name}' not found."
        elif intent == "location_query":
            location = entities.get("location")
            if not location:
                return "Please specify a location."
            query = """
                SELECT site, coordinates, location
                FROM assignment_amlan WHERE location LIKE %s
                UNION ALL
                SELECT site, coordinates, location
                FROM assignment_bolo WHERE location LIKE %s
                UNION ALL
                SELECT site, coordinates, location
                FROM assignment_binan WHERE location LIKE %s
            """
            cursor.execute(query, (f"%{location}%", f"%{location}%", f"%{location}%"))
            results = cursor.fetchall()
            if results:
                response = "Found locations:\n"
                for result in results:
                    response += f"Site: {result['site']}, Coordinates: {result['coordinates']}, Location: {result['location']}\n"
                return response
            return f"No locations found for '{location}'."
        elif intent == "edit_history_query":
            query = """
                SELECT pe.id, pe.target_table, pe.edit_type, pe.proposed_data, pe.status, u.username
                FROM pending_edits pe
                JOIN users u ON pe.requested_by_user_id = u.id
                ORDER BY pe.request_timestamp DESC LIMIT 5
            """
            cursor.execute(query)
            results = cursor.fetchall()
            if results:
                response = "Recent edit history:\n"
                for result in results:
                    response += f"Edit ID: {result['id']}, Table: {result['target_table']}, Type: {result['edit_type']}, Status: {result['status']}, Requested by: {result['username']}, Data: {result['proposed_data']}\n"
                return response
            return "No recent edits found."
        elif intent == "total_vehicles_query":
            query = "SELECT COUNT(*) as total FROM devices UNION ALL SELECT COUNT(*) as total FROM komtrax"
            cursor.execute(query)
            results = cursor.fetchall()
            total = sum([result['total'] for result in results])
            return f"Total vehicles in the system: {total}"
        elif intent == "pending_query":
            query = """
                SELECT target_name, equipment_type, assignment, pending_status
                FROM pending_vehicles WHERE pending_status = 'Pending'
            """
            cursor.execute(query)
            results = cursor.fetchall()
            if results:
                response = "Pending vehicles:\n"
                for result in results:
                    response += f"Vehicle: {result['target_name']}, Type: {result['equipment_type']}, Assignment: {result['assignment']}, Status: {result['pending_status']}\n"
                return response
            return "No pending vehicles found."
        else:
            return None
    except Exception as e:
        logging.error(f"Database query error: {str(e)}")
        return f"Database error: {str(e)}"
    finally:
        cursor.close()
        conn.close()

def query_deepseek(message, vehicle_data, history):
    api_key = os.getenv('DEEPSEEK_API_KEY')
    if not api_key:
        logging.error("DEEPSEEK_API_KEY not set in environment variables")
        return "API key for DeepSeek not configured."

    system_prompt = f"""
    You are a conversational vehicle management assistant for the MDC database. You have access to the following tables:
    - devices: Contains vehicle information (target_name, equipment_type, physical_status, assignment, next_pms_date, etc.)
    - komtrax: Contains additional vehicle data (similar structure to devices)
    - assignment_*: Location-specific tables (e.g., assignment_amlan, assignment_bolo) with site, coordinates, and location
    - pending_edits: Tracks edit requests (target_table, edit_type, proposed_data, status)
    - pending_vehicles: Tracks pending vehicle additions (target_name, equipment_type, assignment, pending_status)
    - users: User information (id, username, role)
    
    Current vehicle data: {json.dumps(vehicle_data)}.
    Use this context to answer questions accurately. If the query requires database access, respond with 'DATABASE_QUERY' to trigger a database operation. For general or ambiguous queries, provide a natural language response. If unsure, say: "I’m not sure about that, but here’s what I can tell you..."
    """
    
    headers = {
        'Authorization': f'Bearer {api_key}',
        'Content-Type': 'application/json'
    }
    payload = {
        'model': 'deepseek-chat',
        'messages': [
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": message}
        ],
        'max_tokens': 500,
        'temperature': 0.7
    }
    
    try:
        response = requests.post('https://api.deepseek.com/v1/chat/completions', headers=headers, json=payload)
        response.raise_for_status()
        response_data = response.json()
        logging.info(f"DeepSeek API response: {json.dumps(response_data)}")
        return response_data['choices'][0]['message']['content']
    except requests.exceptions.HTTPError as e:
        logging.error(f"DeepSeek API HTTP error: {str(e)}, Response: {e.response.text if e.response else 'No response'}")
        return f"Error querying DeepSeek: {str(e)}"
    except Exception as e:
        logging.error(f"DeepSeek API error: {str(e)}")
        return f"Error querying DeepSeek: {str(e)}"

def query_lilypad(message, vehicle_data, history):
    api_key = os.getenv('LILYPAD_API_KEY')
    if not api_key:
        logging.error("LILYPAD_API_KEY not set in environment variables")
        return "API key for Lilypad not configured."

    system_prompt = f"""
    You are a conversational vehicle management assistant for the MDC database. You have access to the following tables:
    - devices: Contains vehicle information (target_name, equipment_type, physical_status, assignment, next_pms_date, etc.)
    - komtrax: Contains additional vehicle data (similar structure to devices)
    - assignment_*: Location-specific tables (e.g., assignment_amlan, assignment_bolo) with site, coordinates, and location
    - pending_edits: Tracks edit requests (target_table, edit_type, proposed_data, status)
    - pending_vehicles: Tracks pending vehicle additions (target_name, equipment_type, assignment, pending_status)
    - users: User information (id, username, role)
    
    Current vehicle data: {json.dumps(vehicle_data)}.
    Use this context to answer questions accurately. If the query requires database access, respond with 'DATABASE_QUERY' to trigger a database operation. For general or ambiguous queries, provide a natural language response. If unsure, say: "I’m not sure about that, but here’s what I can tell you..."
    """
    
    headers = {
        'Authorization': f'Bearer {api_key}',
        'Content-Type': 'application/json',
        'Accept': 'text/event-stream'
    }
    payload = {
        'model': 'deepseek-r1:7b',
        'messages': [
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": message}
        ],
        'max_tokens': 2048,
        'temperature': 0.7
    }
    
    try:
        response = requests.post('https://anura-testnet.lilypad.tech/api/v1/chat/completions', headers=headers, json=payload, stream=True)
        response.raise_for_status()
        result = ""
        for chunk in response.iter_content(chunk_size=None):
            if chunk:
                chunk_str = chunk.decode('utf-8')
                if chunk_str.startswith('data: '):
                    json_str = chunk_str[6:].strip()
                    if json_str != '[DONE]':
                        try:
                            json_data = json.loads(json_str)
                            if json_data.get('choices', [{}])[0].get('message', {}).get('content'):
                                result += json_data['choices'][0]['message']['content']
                        except json.JSONDecodeError:
                            continue
        logging.info(f"Lilypad API response: {result}")
        return result or "No response from Lilypad API"
    except requests.exceptions.HTTPError as e:
        logging.error(f"Lilypad API HTTP error: {str(e)}, Response: {e.response.text if e.response else 'No response'}")
        return f"Error querying Lilypad: {str(e)}"
    except Exception as e:
        logging.error(f"Lilypad API error: {str(e)}")
        return f"Error querying Lilypad: {str(e)}"

@app.route('/chat', methods=['POST'])
def chat():
    try:
        raw_data = request.get_data(as_text=True)
        logging.debug(f"Raw request data: {raw_data}")

        try:
            data = request.get_json(force=True)
        except Exception as e:
            logging.error(f"JSON parsing error: {str(e)}, Raw data: {raw_data}")
            return jsonify({"success": False, "error": f"Invalid JSON: {str(e)}"}), 400

        if not data:
            logging.error("No JSON data received in request")
            return jsonify({"success": False, "error": "No JSON data provided"}), 400

        message = data.get('message', '').strip()
        session_id = data.get('session_id', 'default')
        vehicle_data = data.get('vehicle_data', {})
        history = data.get('history', [])

        if not message:
            logging.warning("No message provided in request")
            return jsonify({"success": False, "error": "No message provided"}), 400

        logging.info(f"Received message: {message}, session_id: {session_id}")

        entities = extract_entities(message)
        intent = extract_intent(message)
        logging.info(f"Extracted intent: {intent}, entities: {entities}")

        db_response = query_database(intent, message, vehicle_data, entities)

        if db_response:
            return jsonify({"success": True, "response": db_response}), 200

        # Try DeepSeek first
        deepseek_response = query_deepseek(message, vehicle_data, history)
        if not deepseek_response.startswith("Error"):
            if deepseek_response == "DATABASE_QUERY":
                response = query_database("general_query", message, vehicle_data, entities) or "I’m not sure about that, but here’s what I can tell you: No specific data found."
            else:
                response = deepseek_response
            return jsonify({"success": True, "response": response}), 200

        # Fallback to Lilypad
        logging.info("Falling back to Lilypad API")
        lilypad_response = query_lilypad(message, vehicle_data, history)
        if lilypad_response == "DATABASE_QUERY":
            response = query_database("general_query", message, vehicle_data, entities) or "I’m not sure about that, but here’s what I can tell you: No specific data found."
        else:
            response = lilypad_response

        return jsonify({"success": not response.startswith("Error"), "response": response}), 200

    except Exception as e:
        logging.error(f"Error in /chat endpoint: {str(e)}")
        return jsonify({"success": False, "error": f"Server error: {str(e)}"}), 500

if __name__ == '__main__':
    logging.info("Starting Flask server")
    port = int(os.getenv('FLASK_PORT', 5000))
    app.run(host='0.0.0.0', port=port)
