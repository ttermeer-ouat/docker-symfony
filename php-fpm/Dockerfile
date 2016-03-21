FROM debian:jessie

MAINTAINER Vincent Composieux <vincent.composieux@gmail.com>

RUN apt-get update \
    && apt-get install -y php5-common php5-cli php5-fpm php5-mcrypt php5-mysql php5-apcu php5-gd php5-imagick php5-curl php5-intl php5-mongo curl subversion

ADD symfony.ini /etc/php5/fpm/conf.d/
ADD symfony.ini /etc/php5/cli/conf.d/

ADD symfony.pool.conf /etc/php5/fpm/pool.d/

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/bin --filename=composer

RUN usermod -u 1000 www-data

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 9000

CMD ["php5-fpm", "-F"]
