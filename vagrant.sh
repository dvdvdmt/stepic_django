#!/usr/bin/env bash
apt-get update
apt-get upgrade
#apt-get -fy install

apt-get install -y gunicorn
apt-get install -y python-dev libmysqlclient-dev
pip install Django==1.6.1
pip install MySQL-python

ln -fs /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart

gunicorn -c /home/box/web/etc/hello.py hello:app --daemon
gunicorn -c /home/box/web/etc/django.py wsgi --daemon