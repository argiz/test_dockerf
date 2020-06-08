FROM php:7.2-apache
LABEL application="pruebas_php"

RUN pecl install xdebug-2.6.0 && \
    docker-php-ext-enable xdebug && \
    docker-php-ext-install pdo pdo_mysql

ENV DISPLAY_ERRORS=“On”

ONBUILD COPY php.ini /usr/local/etc/php/php.ini
ONBLUID COPY index.php /var/www/html/
