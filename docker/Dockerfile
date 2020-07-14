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

# install Symfony Flex globally to speed up download of Composer packages (parallelized prefetching)
RUN set -eux; \
	composer global require "symfony/flex" --prefer-dist --no-progress --no-suggest --classmap-authoritative; \
	composer clear-cache

COPY . /var/www/app

RUN chmod +x ./var/www/app/docker/entrypoint.sh
ENTRYPOINT [ "./var/www/app/docker/entrypoint.sh" ]