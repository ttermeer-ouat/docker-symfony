#!/bin/sh

if [ "$1" = 'php5-fpm' ]; then
	echo "[$(date)] $@" >> /docker-entry.log
	cd /var/www/symfony
	chown -R www-data:www-data *
	composer install
	chown -R www-data:www-data *
fi

exec "$@"