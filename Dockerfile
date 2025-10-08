# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /home/node/app

# Install n8n globally
RUN npm install -g n8n

# Expose port
EXPOSE 5678

# Set environment variables (basic auth)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=networkninjas
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Start n8n
CMD ["n8n", "start"]