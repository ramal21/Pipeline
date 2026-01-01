# Use the lightweight Nginx latest image
FROM nginx:latest

# Remove the default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html into the Nginx html directory
# (Make sure your file is named index.html in the same folder as this Dockerfile)
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
