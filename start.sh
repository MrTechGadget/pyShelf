#!/bin/bash
uwsgi --ini /data/pyShelf/uwsgi.ini &
service nginx start
tail -f /var/log/nginx/error. log