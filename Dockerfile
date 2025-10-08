# -------- firewallguard n8n Free Host --------
FROM node:18-alpine

# Install n8n
RUN npm install -g n8n

WORKDIR /data
EXPOSE 5678

# Environment variables for Render
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=networkninjas
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://n8n-free-host.onrender.com/
ENV N8N_PROTOCOL=https

# Important: disable tunnel (Render doesn’t support it)
ENV N8N_TUNNEL_SUBDOMAIN=false

CMD ["n8n", "start"]