if not exist mnt mkdir mnt
if not exist project mkdir project
if not exist images mkdir images
if not exist log\mysql mkdir log\mysql
if not exist log\nginx mkdir log\nginx
if not exist log\php mkdir log\php
if not exist log\php-fpm mkdir log\php-fpm
if not exist log\php74-fpm mkdir log\php74-fpm
if not exist log\redis mkdir log\redis
if not exist log\rabbitmq mkdir log\rabbitmq
if not exist mysql\logs mkdir mysql\logs
if not exist mysql\data mkdir mysql\data
if not exist redis\data mkdir redis\data
if not exist rabbitmq\mnesia mkdir rabbitmq\mnesia
if not exist redis mkdir redis
echo "done"
pause