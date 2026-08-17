# Use a lightweight official Node.js base image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy dependency manifests first (better layer caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Document the port the app listens on
EXPOSE 3000

# Command that runs when the container starts
CMD ["npm", "start"]
