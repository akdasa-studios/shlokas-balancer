#!/bin/sh

if [[ -z "${BALANCER_ENV}" ]]; then
  echo "Error: No BALANCER_ENV variable is set"
  exit 1
fi

echo "Starting nginx for ${BALANCER_ENV}"

# render template
envsubst "\$BALANCER_ENV"  < ./config/nginx.conf.template > ./config/nginx.conf

# run nginx using rendered config
nginx -c /app/shlokas-balancer/config/nginx.conf -g "daemon off;"
