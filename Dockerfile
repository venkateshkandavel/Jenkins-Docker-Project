# Use the centos:latest base image
FROM centos:latest

# Set the maintainer label
LABEL maintainer="vikashashoke@gmail.com"

# Download the zip file from the URL
RUN curl -L -o /var/www/html/shine.zip https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip

# Set the working directory to /var/www/html/
WORKDIR /var/www/html/

# Unzip the shine.zip file
RUN unzip shine.zip

# Remove the shine.zip file
RUN rm shine.zip

# Start Apache HTTP server in the foreground when a container is started
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# Expose port 80 to allow external access to the web server
EXPOSE 80
