# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code and templates
COPY . .

# Expose the port on which the app will run
EXPOSE 8080 80 8081

# Command to run the application
CMD ["python", "app.py"]