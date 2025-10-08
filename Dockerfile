# Step 1: Use Node.js official image
FROM node:18-alpine

# Step 2: Install n8n globally
RUN npm install -g n8n

# Step 3: Create working directory
WORKDIR /data

# Step 4: Expose default n8n port
EXPOSE 5678

# Step 5: Set environment variables for authentication
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=networkninjas
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Step 6: Start n8n in tunnel mode (needed for Render/Replit)
CMD ["n8n", "start", "--tunnel"]