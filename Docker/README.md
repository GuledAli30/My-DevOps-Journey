# Docker notes

# Docker Module - Learning Summary

## Overview

In this module, I learned how to build and deploy a Flask application using Docker, integrate Redis for data persistence, and configure NGINX as a load balancer. The following sections detail the key steps and concepts I encountered during this learning journey.

## 1. Building the Flask Application

The first step was to create a simple Flask application, which serves as the backbone of the project. The application was structured to handle incoming requests and track the number of visitors. This was achieved by defining the necessary routes and logic within a Python script named `counter.py`.

### Key Steps:
- Set up a virtual environment for the Flask application.
- Install the required dependencies, including Flask.
- Create the `counter.py` file with routes for handling visits.

## 2. Integrating Redis for Data Persistence

To persist data across application restarts, I integrated Redis. By using Redis as a data store, the application could retain the visitor count even when the containers were stopped or restarted. 

### Configuration:
- Updated the `docker-compose.yml` file to include a Redis service.
- Utilised Docker volumes to ensure that Redis data is stored persistently. This allows the application to retain its state between restarts.
  
```yaml
redis:
  image: redis:alpine
  volumes:
    - redis_data:/data

## 3. Configuring NGINX as a Load Balancer

To improve the application's scalability and performance, I configured NGINX as a load balancer. This setup enabled me to run multiple instances of the Flask application, distributing incoming traffic across them.

### Implementation:
- Created a custom `nginx.conf` file to define the upstream servers and routing logic.
- Updated the `docker-compose.yml` to scale the web service, running three instances of the Flask application.

```yaml
services:
  web:
    image: counter-flask-web
    deploy:
      replicas: 3


## 4. Final Docker Compose Configuration

The final version of the `docker-compose.yml` file is as follows:

```yaml
version: '3.8'

services:
  web:
    image: counter-flask-web
    expose:
      - "5002"
    depends_on:
      - redis
    networks:
      - my_network

  nginx:
    image: nginx:latest
    ports:
      - "5001:5002"
    volumes:
      - ./nginx.conf:/etc/nginx/nginx.conf
    networks:
      - my_network

  redis:
    image: redis:alpine
    volumes:
      - redis_data:/data
    networks:
      - my_network

networks:
  my_network:
    driver: bridge

volumes:
  redis_data:


# Conclusion 

This Docker module has significantly enhanced my understanding of containerisation and orchestration. By building a Flask application, integrating Redis for data persistence, and utilising NGINX as a load balancer, I have gained practical experience in deploying scalable and resilient web applications using Docker.