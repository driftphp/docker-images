FROM driftphp:ext-event

COPY . /var/www

RUN rm /usr/bin/composer

EXPOSE 8000
CMD ["/usr/bin/php", "/var/www/server.php"]