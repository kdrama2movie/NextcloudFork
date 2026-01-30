FROM nextcloud:fpm

# 1. Clear out the image's old code
RUN rm -rf /var/www/html/*

# 2. Copy your v34 fork
COPY . /var/www/html/

# 3. Disable PHP JIT (The most common cause of Segfault 11)
RUN echo "opcache.jit=off" > /usr/local/etc/php/conf.d/disable-jit.ini

# 4. Fix permissions
RUN chown -R www-data:www-data /var/www/html
