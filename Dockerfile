# Use official Node.js image
FROM node:20

# Install pnpm
RUN npm install -g pnpm

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --force

# Copy application code
COPY . .

# Expose the port your app uses (check bin/www.js for the port, usually 3000)
EXPOSE 3000

# Start the application
CMD ["pnpm", "start"]
