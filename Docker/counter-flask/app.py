# app/app.py

from flask import Flask
import redis

# Initialize Flask application
app = Flask(__name__)

# Initialize Redis client
r = redis.Redis(host='redis', port=6379)

@app.route('/')
def index():
    # Increment the counter in Redis
    counter = r.incr('counter')
    return f'Hello, you are visitor number {counter}!'

if __name__ == '__main__':
    app.run(host='0.0.0.0')
