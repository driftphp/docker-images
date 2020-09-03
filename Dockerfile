FROM driftphp/base

COPY . /var/www

RUN /usr/bin/composer install
RUN rm /usr/bin/composer

EXPOSE 8000
CMD ["/usr/local/bin/php", "/var/www/server.php"]