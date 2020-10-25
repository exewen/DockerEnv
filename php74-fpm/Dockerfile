FROM php:7.4.11-fpm as php74-fpm
# 切换源
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak \
    && echo "deb http://mirrors.ustc.edu.cn/debian/ buster main" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.ustc.edu.cn/debian/ buster main" >>/etc/apt/sources.list \
    && echo "deb http://mirrors.ustc.edu.cn/debian-security buster/updates main" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.ustc.edu.cn/debian-security buster/updates main" >>/etc/apt/sources.list \
    && echo "deb http://mirrors.ustc.edu.cn/debian/ buster-updates main" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.ustc.edu.cn/debian/ buster-updates main" >>/etc/apt/sources.list
## 安装扩展
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        build-essential \
        libmagickcore-dev \
        libmagickwand-dev \
        imagemagick \
    && docker-php-ext-install -j$(nproc) \
        iconv pdo_mysql  mysqli bcmath calendar exif gettext sockets \
        dba pcntl shmop sysvmsg sysvsem sysvshm
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install -j$(nproc) gd
# 安装自定义插件 pecl: https://pecl.php.net/
RUN pecl install mcrypt \
    && pecl install imagick \
    && pecl install redis-3.1.6 \
    && pecl install xlswriter-1.3.6 \
    && docker-php-ext-enable mcrypt imagick redis xlswriter
# 安装易用扩展
RUN apt-get install -y vim sudo less git zip unzip lrzsz net-tools openssh-server
RUN echo "alias ll='ls \$LS_OPTIONS -l'" >>~/.bashrc
RUN /bin/bash -c "source ~/.bashrc"
#RUN service ssh start && passwd root && 123456 #SSH手动启动
# 安装PHP composer
RUN php -r "copy('https://install.phpcomposer.com/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && sudo mv composer.phar /usr/local/bin/composer \
    && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/