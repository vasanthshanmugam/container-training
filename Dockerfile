# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the requirements.txt file (if you have Python dependencies)
COPY requirements.txt ./

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Make port 80 available to the world outside the container
EXPOSE 80

# Define the command to run your app (this can be customized based on your app)
CMD ["python", "./app.py"]
