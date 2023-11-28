# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the custom static web page to the Nginx default HTML directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 for the Nginx web server
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
