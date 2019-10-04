FROM alpine:3.10
LABEL maintainer="creativenobu"

WORKDIR /var/www
COPY server.sh /bin/server
EXPOSE 80

RUN apk add --update \
php7 \
php7-fpm \
php7-mysqli \
php7-pdo \
php7-pdo_mysql \
php7-mbstring \
php7-xml \
php7-xmlwriter \
php7-openssl \
php7-json \
php7-phar \
php7-zip \
php7-fileinfo \
php7-tokenizer \
php7-dom \
php7-session

ENTRYPOINT ["/bin/server"]
