FROM nextcloud:apache

# 1. Clear out the image's old v32 code
RUN rm -rf /var/www/html/*

# 2. Copy your v34 fork
COPY . /var/www/html/

# 3. FIX THE SEGFAULT: Disable PHP JIT 
# This is usually what causes Segfault 11 in newer Nextcloud versions on older bases
RUN echo "opcache.jit=off" > /usr/local/etc/php/conf.d/disable-jit.ini

# 4. Set memory limit (v34 is heavy)
RUN echo "memory_limit=512M" >> /usr/local/etc/php/conf.d/nextcloud.ini

# 5. Ensure permissions are correct
RUN chown -R www-data:www-data /var/www/html
