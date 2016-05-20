#!/usr/bin/env bash

apt-get update
apt-get install -y Nginx
apt-get install -y gunicorn

ln -fs /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart

gunicorn -c /home/box/web/etc/gunicorn.py hello:app