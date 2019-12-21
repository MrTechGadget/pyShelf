#!/bin/bash
uwsgi --ini /data/pyShelf/uwsgi.ini &
sleep 5
service nginx start
tail -f /var/log/nginx/access.log