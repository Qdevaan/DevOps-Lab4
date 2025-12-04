# Use a lightweight Nginx image
FROM nginx:alpine

# Remove the default Nginx index.html
RUN rm -rf /usr/share/nginx/html/*

# Copy all your static files (index.html, app.js, etc.) into the Nginx public folder
COPY . /usr/share/nginx/html

# The standard Nginx configuration already listens on port 80
EXPOSE 80