# app/Dockerfile

# Use official Python base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install dependencies
RUN pip install flask redis 

# Expose port 5002 for Flask
EXPOSE 5002

# Run the application
CMD ["python", "app.py"]
