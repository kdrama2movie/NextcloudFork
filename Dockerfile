# We use the 'edge' tag because it supports the v34 schema
FROM nextcloud:edge

# Clean and copy your fork
RUN rm -rf /var/www/html/*
COPY . /var/www/html/

# Ensure permissions are correct for Render
RUN chown -R www-data:www-data /var/www/html

