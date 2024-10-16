# Use the official Node.js image from Docker Hub
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install dependencies
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose the application on port 3000
EXPOSE 3000

# Start the application
CMD [ "node", "app.js" ]

