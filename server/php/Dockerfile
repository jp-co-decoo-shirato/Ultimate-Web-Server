FROM php:7-fpm-alpine

RUN adduser -D -H -s /bin/sh -u 1000 worker

# setup php
RUN apk --no-cache add \
  curl-dev \
  libmcrypt-dev \
  freetype-dev \
  libjpeg-turbo-dev \
  libpng-dev \
  libxml2-dev \
  zlib-dev \
  && NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) \
  && docker-php-ext-install -j${NPROC} \
    curl \
    dom \
    mbstring \
    mcrypt \
    mysqli \
    pdo \
    pdo_mysql \
    simplexml \
    zip \
  && docker-php-ext-configure gd \
    --with-freetype-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
  && docker-php-ext-install -j${NPROC} gd \
  && mkdir -p /var/run/php-fpm \
  && chown worker:worker /var/run/php-fpm \
  && chown -R worker:worker /var/www \
  && chmod -R 700 /var/www

# put config
COPY ./php.ini /usr/local/etc/php/php.ini
COPY ./www.conf /usr/local/etc/php-fpm.d/zzz-www.conf

VOLUME ["/var/run/php-fpm"]
VOLUME ["/var/www"]
