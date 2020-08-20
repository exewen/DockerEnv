FROM nginx:1.18.0
# 切换源
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak \
    && echo "deb http://mirrors.aliyun.com/debian/ buster main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.aliyun.com/debian/ buster main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb http://mirrors.aliyun.com/debian-security buster/updates main" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.aliyun.com/debian-security buster/updates main" >>/etc/apt/sources.list \
    && echo "deb http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib" >>/etc/apt/sources.list \
    && apt-get update \
    && apt-get install vim -y \
    && echo "alias ll='ls \$LS_OPTIONS -l'" >>~/.bashrc \
    #&& source ~/.bashrc
    && /bin/bash -c "source ~/.bashrc"