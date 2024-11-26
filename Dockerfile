# Start from the official Nginx base image
FROM nginx:latest

# Copy custom HTML files to the default Nginx directory
COPY html /usr/share/nginx/html

# Copy custom Nginx configuration (optional)
# Uncomment the following line if using a custom nginx.conf
 COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
