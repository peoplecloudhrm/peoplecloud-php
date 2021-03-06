FROM bitnami/php-fpm:7.0.28-r2 

RUN set -ex && mkdir -p /usr/src/app

WORKDIR /usr/src/app

ENV HOME=/usr/src/app \
    PATH=/usr/src/app:/usr/src/app/vendor/bin:$PATH

RUN  apt-get update \
    && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

