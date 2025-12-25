# Use official Nginx image
FROM nginx:alpine

# Copy your portfolio website files to Nginx's default serving directory
COPY portfolio-app/ /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Nginx starts automatically with the base image's default command