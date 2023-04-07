# Use a base image with Node.js installed
FROM node:14

# Create a directory for the app and set it as the working directory
WORKDIR .

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the app's dependencies
RUN npm install

# Copy the rest of the app's source code to the container
COPY . .

# Expose the port that the app will listen on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
