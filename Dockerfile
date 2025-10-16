# Use an official base image
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy all files from the current directory into the container
COPY . /app

# Install dependencies (if you have a requirements.txt file)
RUN pip install --no-cache-dir -r requirements.txt

# Expose a port (optional, depends on your app)
EXPOSE 5000

# Define the command to run your app
CMD ["python", "app.py"]
