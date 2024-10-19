from flask import Flask
import os
import redis

app = Flask(__name__)  # Define the Flask app

# Connect to Redis using the service name 'redis'
redis_host = os.getenv('REDIS_HOST', 'redis')  # Default to 'redis' if the env variable is not set
redis_client = redis.StrictRedis(host=redis_host, port=6379, db=0)

# Optional: Test the connection
try:
    redis_client.ping()
    print("Connected to Redis")
except redis.ConnectionError as e:
    print("Could not connect to Redis:", e)

@app.route('/') 
def welcome():
    return 'Welcome to my Containers Challenge'

@app.route('/count')
def count():
    count = redis_client.incr('visits')  # Change 'r' to 'redis_client'
    return f'This page has been visited {count} times'

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5002)  # Use '0.0.0.0' here


