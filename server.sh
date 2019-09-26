#!/bin/sh
composer install
php7 artisan serve --host=0.0.0.0 --port=80
