# Use the official Node.js image
FROM node:20.11.1
# Set the working directory
WORKDIR /usr/src/app
# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install
# Copy the application code
COPY . .

# Set the PORT environment variable
ENV PORT=3000

# Expose the app's port
EXPOSE 3000
# Command to run the app
CMD ["node", "server.js"]