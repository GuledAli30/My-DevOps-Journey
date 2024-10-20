# Docker Module - Learning Summary

## 1. Building the Flask Application

I started by creating a basic Flask application that serves a simple webpage.

## 2. Integrating Redis for Data Persistence

I added Redis to my application to hold the number of visitors. This involved setting up a volume in my `docker-compose.yml` file.

## 3. Configuring NGINX as a Load Balancer

To improve the application's scalability and performance, I configured NGINX as a load balancer.

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
  ...
