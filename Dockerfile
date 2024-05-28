# Base Docker image being used
FROM node:18-alpine

# Create an app directory
WORKDIR /app

# Install app dependencies ... keep in mind ./ means /app dir
COPY package.json ./ 

# Run npm install
RUN npm install

# Copy source code (bundle app source)
COPY . .

# Expose the port I am using
EXPOSE 8080

CMD ["npm", "start"]
