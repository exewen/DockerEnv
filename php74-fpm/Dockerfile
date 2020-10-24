FROM php:7.4.11-fpm as php74
# 切换源&&扩展
RUN echo "deb http://mirrors.aliyun.com/debian/ buster main non-free contrib \n \
deb-src http://mirrors.aliyun.com/debian/ buster main non-free contrib \n \
deb http://mirrors.aliyun.com/debian-security buster/updates main \n \
deb-src http://mirrors.aliyun.com/debian-security buster/updates main \n \
deb http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib \n \
deb-src http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib \n \
deb http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib \n \
deb-src http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib" > /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y \
        build-essential \
        libmagickcore-dev \
        libmagickwand-dev \
        imagemagick \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev
#        \
#    && docker-php-ext-configure gd  --with-webp=/usr/include/webp --with-jpeg=/usr/include --with-freetype=/usr/include/freetype2/ \
#    && docker-php-ext-install -j$(nproc) gd iconv  pdo_mysql  mysqli bcmath calendar exif gettext sockets dba  pcntl  shmop sysvmsg sysvsem sysvshm \
#    && pecl install redis-3.1.6 \
#    && pecl install imagick \
#    && pecl install mcrypt \
#    && docker-php-ext-enable redis imagick mcrypt
#&& pecl install redis-5.1.1 \
# 安装易用扩展
RUN apt-get install -y vim sudo
# 安装PHP composer
RUN php -r "copy('https://install.phpcomposer.com/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && sudo mv composer.phar /usr/local/bin/composer \
    && composer config -g repo.packagist composer https://packagist.phpcomposer.com