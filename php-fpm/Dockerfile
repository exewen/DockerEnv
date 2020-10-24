FROM php:7.0.13-fpm as php-fpm
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak \
    && echo "deb http://mirrors.163.com/debian/ jessie main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb http://mirrors.163.com/debian/ jessie-updates main non-free contrib" >>/etc/apt/sources.list \
    && echo "#deb http://mirrors.163.com/debian/ jessie-backports main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.163.com/debian/ jessie main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.163.com/debian/ jessie-updates main non-free contrib" >>/etc/apt/sources.list \
    && echo "#deb-src http://mirrors.163.com/debian/ jessie-backports main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib" >>/etc/apt/sources.list
# 安装扩展
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libmemcached-dev \
        zlib1g-dev \
        libcurl4-openssl-dev \
        libxml2-dev \
        --no-install-recommends && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install -j$(nproc) \
        iconv mcrypt gettext curl mysqli pdo pdo_mysql zip \
        mbstring bcmath opcache xml simplexml sockets hash soap xmlwriter \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd
# 安装imap扩展
RUN apt-get update && apt-get install -y --no-install-recommends libc-client-dev libkrb5-dev \
        && rm -r /var/lib/apt/lists/* \
        && docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
        && docker-php-ext-install -j$(nproc) imap
#安装 PHP的Redis扩展
ENV PHPREDIS_VERSION 3.1.6
RUN mkdir -p /usr/src/php/ext/redis \
    && curl -L https://github.com/phpredis/phpredis/archive/$PHPREDIS_VERSION.tar.gz | tar xvz -C /usr/src/php/ext/redis --strip 1 \
    && echo 'redis' >> /usr/src/php-available-exts \
    && docker-php-ext-install redis
#安装 PHP的xlswriter扩展
ENV XLSWRITER 1.2.7
RUN mkdir -p /usr/src/php/ext/xlswriter \
#    && curl -L https://pecl.php.net/get/xlswriter-1.2.7.tgz | tar xvz -C /usr/src/php/ext/xlswriter --strip 1 \
    && curl -L https://pecl.php.net/get/xlswriter-1.3.6.tgz | tar xvz -C /usr/src/php/ext/xlswriter --strip 1 \
    && echo 'xlswriter' >> /usr/src/php-available-exts \
    && docker-php-ext-install xlswriter
#安装 PHP的AMQP扩展
#RUN mkdir -p /usr/src/rabbitmq-c \
#    && curl -L https://github.com/alanxz/rabbitmq-c/releases/download/v0.8.0/rabbitmq-c-0.8.0.tar.gz | tar xvz -C /usr/src/rabbitmq-c --strip 1 \
#    && cd /usr/src/rabbitmq-c \
#    && ./configure --prefix=/usr/local/rabbitmq-c \
#    && make && make install
#RUN mkdir -p /usr/src/php/ext/amqp
#    && curl -L https://pecl.php.net/get/amqp-1.9.3.tgz | tar xvz -C /usr/src/php/ext/amqp --strip 1 \
#    && echo 'amqp' >> /usr/src/php-available-exts \
#    && cp /usr/src/rabbitmq-c/librabbitmq/amqp_ssl_socket.h /usr/src/php/ext/amqp/ \
#    && docker-php-ext-configure amqp --with-librabbitmq-dir=/usr/local/rabbitmq-c \
#    && docker-php-ext-install amqp \
#    && php -m | grep amqp

#安装 PHP的Xdebug扩展
#ENV PHPXDEBUG_VERSION 2.8.1
#RUN mkdir -p /usr/src/php/ext/xdebug \
#    && curl -L http://xdebug.org/files/xdebug-${PHPXDEBUG_VERSION}.tgz | tar xvz -C /usr/src/php/ext/xdebug --strip 1 \
#    && echo 'xdebug' >> /usr/src/php-available-exts \
#    && docker-php-ext-install xdebug
#CMD ["php-fpm", "-F"]
# 安装易用扩展
RUN apt-get update && apt-get install -y vim sudo less git
RUN echo "alias ll='ls \$LS_OPTIONS -l'" >>~/.bashrc
#&& source ~/.bashrc
#安装 PHP composer
RUN php -r "copy('https://install.phpcomposer.com/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && sudo mv composer.phar /usr/local/bin/composer \
    && composer config -g repo.packagist composer https://packagist.phpcomposer.com
