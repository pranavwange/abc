# Use an existing image as the base image
FROM python:3.9.0

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file
COPY requirements.txt ./

# Install dependencies
RUN pip install -r requirements.txt

# Copy the rest of the files from the host directory to the container
COPY . .

# Specify the command to run when the container starts
CMD [ "python", "./main.py" ]
CMD [ "python", "./test1.py" ]