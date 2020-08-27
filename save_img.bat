docker save -o ./images/rabbitmq.3.8.3-management.tar rabbitmq:3.8.3-management
docker save -o ./images/redis.3.2.12.tar redis:3.2.12
docker save -o ./images/mysql.5.7.tar mysql:5.7
docker save -o ./images/php.7.0.13-fpm.tar php:7.0.13-fpm
docker save -o ./images/nginx.1.18.0.tar nginx:1.18.0
docker save -o ./images/dockerenv_php.tar dockerenv_php:latest
docker save -o ./images/dockerenv_nginx.tar dockerenv_nginx:latest
pause