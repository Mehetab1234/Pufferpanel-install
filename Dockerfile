# Use an official lightweight Node.js image (adjust as needed)
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy all necessary files
COPY . .

# Make sure start.sh is executable
RUN chmod +x start.sh

# Set the default command to run start.sh
CMD ["sh", "./start.sh"]
