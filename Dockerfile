# Author = Aniket Chikane

# Use an official python runtime as a parent image
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the application files
COPY app/ /app/

#Insatll dependencies
RUN pip install -r requirements.txt

#Expose port 5000
EXPOSE 5000

# Define environment variable
ENV BRANCH_NAME="main"

# Run the application
CMD ["python", "server.py"]

# End 
