# DockerEnv
### 进入容器
~~~
docker exec -it php /bin/bash
~~~
### 容器文件复制
~~~
docker cp php:/usr/local/etc/php-fpm.conf.default D:\
~~~
### 更新镜像
~~~
#cat /etc/issue
#Debian GNU/Linux 8 \n \l

mv /etc/apt/sources.list /etc/apt/sources.list.bak &&
echo "deb http://mirrors.163.com/debian/ jessie main non-free contrib" >>/etc/apt/sources.list &&
echo "deb http://mirrors.163.com/debian/ jessie-updates main non-free contrib" >>/etc/apt/sources.list &&
echo "#deb http://mirrors.163.com/debian/ jessie-backports main non-free contrib" >>/etc/apt/sources.list &&
echo "deb-src http://mirrors.163.com/debian/ jessie main non-free contrib" >>/etc/apt/sources.list &&
echo "deb-src http://mirrors.163.com/debian/ jessie-updates main non-free contrib" >>/etc/apt/sources.list &&
echo "#deb-src http://mirrors.163.com/debian/ jessie-backports main non-free contrib" >>/etc/apt/sources.list &&
echo "deb http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib" >>/etc/apt/sources.list &&
echo "deb-src http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib" >>/etc/apt/sources.list &&
apt-get update &&
apt-get install vim -y &&
echo 'alias ll='ls $LS_OPTIONS -l'' >>~/.bashrc &&
source ~/.bashrc;

#cat /etc/issue
#Debian GNU/Linux 10 \n \l

mv /etc/apt/sources.list /etc/apt/sources.list.bak &&
echo "deb http://mirrors.aliyun.com/debian/ buster main non-free contrib" >>/etc/apt/sources.list &&
echo "deb-src http://mirrors.aliyun.com/debian/ buster main non-free contrib" >>/etc/apt/sources.list &&
echo "deb http://mirrors.aliyun.com/debian-security buster/updates main" >>/etc/apt/sources.list &&
echo "deb-src http://mirrors.aliyun.com/debian-security buster/updates main" >>/etc/apt/sources.list &&
echo "deb http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib" >>/etc/apt/sources.list &&
echo "deb-src http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib" >>/etc/apt/sources.list &&
echo "deb http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib" >>/etc/apt/sources.list &&
echo "deb-src http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib" >>/etc/apt/sources.list &&
apt-get update &&
apt-get install vim -y;
~~~