# Use the daily 'master' build which corresponds to v34
FROM nextcloud:latest

# If 'latest' still gives you the v32 error, use the specific master tag:
# FROM nextcloud:2026-01-30-apache (Note: Tags change daily, 'latest' is safer)

RUN rm -rf /var/www/html/*
COPY . /var/www/html/

RUN chown -R www-data:www-data /var/www/html
