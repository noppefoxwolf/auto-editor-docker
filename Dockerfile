# Use the Python 3.10 image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Update package lists
RUN apt-get update

# Install required libraries including libav packages
RUN apt-get install -y ffmpeg libavformat-dev libavdevice-dev libavfilter-dev libswscale-dev pkg-config gcc

# Copy the current directory contents into the container at /app
COPY . /app

# Install auto-editor and its dependencies
RUN pip install auto-editor

# Set the entrypoint command to run auto-editor on the specified video file
ENTRYPOINT ["auto-editor"]
