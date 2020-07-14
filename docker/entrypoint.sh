#!/bin/bash
set -e

# Up this Symfony project
bash -c "cd ./var/www/app && composer install"
bash -c "cd ./var/www/app && php -S localhost:80"