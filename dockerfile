# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the application code
COPY app.py .

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt


# Expose the port the application will listen on
EXPOSE 5000

# Set the command to run the application
CMD ["python", "app.py"]
