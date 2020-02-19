FROM driftphp/ext-uv

COPY . /var/www

RUN rm /usr/bin/composer

EXPOSE 8000
CMD ["/usr/local/bin/php", "/var/www/server.php"]