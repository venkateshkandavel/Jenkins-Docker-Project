# Add the zip file from the URL to the /var/www/html/ directory
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/

# Set the working directory to /var/www/html/
WORKDIR /var/www/html/

# Unzip the shine.zip file
RUN unzip shine.zip

# Copy the contents of the shine directory to the current directory
RUN cp -rvf shine/* .

# Remove the shine directory and the zip file
RUN rm -rf shine shine.zip

# Start Apache HTTP server in the foreground when a container is started
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# Expose port 80 to allow external access to the web server
EXPOSE 80
