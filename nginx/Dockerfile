FROM nginx:1.18.0
# 切换源1
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak \
    && echo "deb http://mirrors.ustc.edu.cn/debian/ buster main" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.ustc.edu.cn/debian/ buster main" >>/etc/apt/sources.list \
    && echo "deb http://mirrors.ustc.edu.cn/debian-security buster/updates main" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.ustc.edu.cn/debian-security buster/updates main" >>/etc/apt/sources.list \
    && echo "deb http://mirrors.ustc.edu.cn/debian/ buster-updates main" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.ustc.edu.cn/debian/ buster-updates main" >>/etc/apt/sources.list
# 切换源2
#RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak \
#    && echo "deb http://mirrors.aliyun.com/debian/ buster main non-free contrib" >>/etc/apt/sources.list \
#    && echo "deb-src http://mirrors.aliyun.com/debian/ buster main non-free contrib" >>/etc/apt/sources.list \
#    && echo "deb http://mirrors.aliyun.com/debian-security buster/updates main" >>/etc/apt/sources.list \
#    && echo "deb-src http://mirrors.aliyun.com/debian-security buster/updates main" >>/etc/apt/sources.list \
#    && echo "deb http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib" >>/etc/apt/sources.list \
#    && echo "deb-src http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib" >>/etc/apt/sources.list \
#    && echo "deb http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib" >>/etc/apt/sources.list \
#    && echo "deb-src http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib" >>/etc/apt/sources.list
RUN apt-get update  && apt-get install -y \
    vim sudo less git
RUN echo "alias ll='ls \$LS_OPTIONS -l'" >>~/.bashrc \
    /bin/bash -c "source ~/.bashrc"