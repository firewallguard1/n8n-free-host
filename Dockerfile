FROM node:18-bullseye

# Install n8n globally
RUN npm install -g n8n

# create working dir
WORKDIR /data

# expose port
EXPOSE 5678

# environment variables for basic auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=networkninjas
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# start n8n
CMD ["n8n", "start", "--tunnel"]