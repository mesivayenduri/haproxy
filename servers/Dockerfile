# Use the official Apache HTTPD image
FROM httpd:latest

# Copy a custom HTML file to the Apache server's root directory
COPY ./index.html /usr/local/apache2/htdocs/
# COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

# Expose port 2222
EXPOSE 4444

# Change the HTTPD configuration to listen on port 2222
RUN sed -i 's/Listen 80/Listen 4444/' /usr/local/apache2/conf/httpd.conf
