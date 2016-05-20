#!/usr/bin/env bash

ln -fs /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart

gunicorn -c /home/box/web/etc/gunicorn.py hello:app