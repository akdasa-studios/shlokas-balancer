#!/bin/sh
cp /etc/nginx/nginx.${ENV}.conf /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'
