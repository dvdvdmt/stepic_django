#!/usr/bin/env bash

apt-get update
apt-get install -y Nginx
apt-get install -y gunicorn

ln -fs /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart
#ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
#/etc/init.d/gunicorn restart