# Use the official Python 3.9 slim buster image as base
FROM python:3.9-slim-buster

# Set the working directory within the container
WORKDIR /app

# Copy the requirements.txt file from the host to the container
COPY requirements.txt .

# Install the Python dependencies listed in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the current directory contents from the host to the container's working directory
COPY . .

# Set the environment variable for Flask to run on all available network interfaces
ENV FLASK_RUN_HOST=0.0.0.0

# Expose port 5000 to allow communication with the Flask application
EXPOSE 5000

# Specify the default command to run when the container starts
CMD ["flask", "run"]