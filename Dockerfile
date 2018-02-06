FROM php:5.6-jessie

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl git zip

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /tmp
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer;

WORKDIR /app

CMD ["composer"]