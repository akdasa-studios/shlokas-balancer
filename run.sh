#!/bin/sh
echo "Starting nginx for ${BALANCER_ENV:-dev}"
nginx -c /app/shlokas-balancer/config/nginx.${BALANCER_ENV:-dev}.conf -g "daemon off;"
