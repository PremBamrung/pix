# Base image
FROM python:3.9-slim-buster

# Set the working directory
WORKDIR /app

# Copy the necessary files
COPY requirements.txt .
COPY pix/ pix/
COPY app/ app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the necessary ports
EXPOSE 8000

# Set the entrypoint command
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

