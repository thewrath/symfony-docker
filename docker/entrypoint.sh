#!/bin/bash
set -e

# Up this Symfony project
bash -c "composer install"
bash -c "symfony server:ca:install"
bash -c "symfony server:stop"
bash -c "symfony server:start --port=80 --no-tls"