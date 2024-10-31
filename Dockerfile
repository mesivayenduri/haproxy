# Use the official HAProxy image
FROM haproxy:latest

# Copy the custom HAProxy configuration file
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

# Expose the HAProxy default port (80) or any other port specified in the configuration
EXPOSE 80
EXPOSE 8081