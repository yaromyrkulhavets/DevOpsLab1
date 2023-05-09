FROM php:8.0-apache
COPY ./public/index.html /var/www/html/index.html
COPY ./public/info.php /var/www/html/info.php
EXPOSE 80