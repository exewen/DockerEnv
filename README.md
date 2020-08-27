# DockerEnv
### 使用说明
~~~
# 初始化文件目录
mkdir.bat
# 导入镜像
save_img.bat
# 重构镜像
docker-compose up --build
# 启动
docker-compose up -d
# 关闭
docker-compose down
# 重启
docker-compose restart
~~~
### 进入容器
~~~
docker exec -it php /bin/bash
~~~
### 容器文件复制
~~~
docker cp php:/usr/local/etc/php-fpm.conf.default D:\
~~~

### 推送H
~~~
docker tag dockerenv_nginx:latest exewen/nginx:1.18.0
docker push exewen/nginx
docker tag dockerenv_php:latest exewen/php-fpm:7.0.13
docker push exewen/php-fpm
~~~