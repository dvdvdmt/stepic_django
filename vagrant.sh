#!/usr/bin/env bash

apt-get update
apt-get install -y Nginx
apt-get install -y gunicorn
apt-get install -y python-pip
pip install Django==1.6.1

ln -fs /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart

gunicorn -c /home/box/web/etc/hello.py hello:app --daemon
gunicorn -c /home/box/web/etc/django.py wsgi --daemon