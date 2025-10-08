FROM node:18-alpine

# Install n8n
RUN npm install -g n8n

WORKDIR /data
EXPOSE 5678

# Basic Auth (তুমি চাইলে ইউজারনেম/পাসওয়ার্ড বদলাতে পারো)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=networkninjas
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Disable tunnel (Render এর জন্য)
ENV N8N_TUNNEL_SUBDOMAIN=false
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://n8n-free-host.onrender.com/

CMD ["n8n", "start"]