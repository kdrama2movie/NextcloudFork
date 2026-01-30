# Use the official image as a base because it has the webserver and PHP extensions
FROM nextcloud:apache

# Delete the default code and copy YOUR forked code into the container
RUN rm -rf /var/www/html/*
COPY . /var/www/html/

# Fix permissions
RUN chown -R www-data:www-data /var/www/html
