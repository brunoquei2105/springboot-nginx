# Use the official Nginx image from Docker Hub
FROM nginx

# Copy your custom Nginx configuration file to the appropriate directory
COPY nginx.conf /etc/nginx/conf.d/

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf
