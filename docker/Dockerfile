FROM php:7.4-alpine AS symfony_php
# persistent / runtime deps
RUN apk add --no-cache \
        acl \
        fcgi \
        file \
        gettext \
        git \
        jq \
		bash \
		openssl \ 
		openssl-dev \ 
		curl-dev \
        composer \
    ;

RUN docker-php-ext-install -j$(nproc) pdo pdo_mysql

SHELL ["/bin/bash", "-c"]

# Install new symfony tool
RUN wget https://get.symfony.com/cli/installer -O - | bash

RUN mv /root/.symfony/bin/symfony /usr/local/bin/symfony

# Create symfony project
RUN composer create-project symfony/website-skeleton:^4.4 .

COPY . /

ENTRYPOINT [ "docker/entrypoint.sh" ]