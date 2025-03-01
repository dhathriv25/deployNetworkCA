
# Step 1: Use an official Python image as the base image
FROM python:3.8-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements.txt and app.py into the container
COPY requirements.txt /app/
COPY app.py /app/

# Step 4: Install the required dependencies inside the container
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose port 5000, as Flask runs on this port by default
EXPOSE 80

# Step 6: Define the command to run the app
CMD ["python", "app.py"]
