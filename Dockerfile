# Use a base image with Python pre-installed
FROM python:3.12

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory into the container at /app
COPY . /app

# Install the necessary Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Command to run the app (modify this as needed)
CMD ["python", "app.py"]

