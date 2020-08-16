# DockerEnv
### 进入容器
~~~
docker exec -it php /bin/bash
~~~
### 容器文件复制
~~~
docker cp php:/usr/local/etc/php-fpm.conf.default D:\
~~~
### 安装更新
~~~
mv /etc/apt/sources.list /etc/apt/sources.list.bak &&

mv /etc/apt/sources.list.bak /etc/apt/sources.list

echo "deb http://mirrors.aliyun.com/ubuntu/ xenial main" >/etc/apt/sources.list &&
echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial main" >/etc/apt/sources.list &&
echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main" >/etc/apt/sources.list &&
echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main" >/etc/apt/sources.list &&
echo "deb http://mirrors.aliyun.com/ubuntu/ xenial universe" >/etc/apt/sources.list &&
echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial universe" >/etc/apt/sources.list &&
echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates universe" >/etc/apt/sources.list &&
echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates universe" >/etc/apt/sources.list &&
echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security main" >/etc/apt/sources.list &&
echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main" >/etc/apt/sources.list &&
echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security universe" >/etc/apt/sources.list &&
echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security universe" >/etc/apt/sources.list

echo "deb http://mirrors.163.com/debian/ jessie main non-free contrib" >/etc/apt/sources.list &&
echo "deb http://mirrors.163.com/debian/ jessie-proposed-updates main non-free contrib" >>/etc/apt/sources.list &&
echo "deb-src http://mirrors.163.com/debian/ jessie main non-free contrib" >>/etc/apt/sources.list &&
echo "deb-src http://mirrors.163.com/debian/ jessie-proposed-updates main non-free contrib" >>/etc/apt/sources.list &&
apt-get update &&
apt-get install vim;
~~~
### 打开ll
~~~
vim ~/.bashrc
# alias ll='ls $LS_OPTIONS -l'  打开
source ~/.bashrc 
~~~