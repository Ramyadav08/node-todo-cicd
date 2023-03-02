# Base image
FROM node:14-alpine

# Create and set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --production

# Copy project files
COPY . .

# Set environment variables
ENV NODE_ENV=production
ENV PORT=3000

# Expose port for server
EXPOSE 3000

# Start server
CMD ["node", "app.js"]
