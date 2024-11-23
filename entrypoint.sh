#!/bin/bash

if [ -z "$ENV_NAME" ]; then
    ENV_NAME="prod"
fi

echo "Gateway Run Env : $ENV_NAME"

if [ ! -d "/etc/nginx/conf.d/custom" ]; then
    rm -rf /etc/nginx/conf.d/*

    cp -rf /root/$ENV_NAME/nginx/ /etc/
    cp -r /root/custom/ /etc/nginx/conf.d/

    openssl dhparam -out /etc/nginx/dhparam.pem 2048

    rm -rf /root/*
fi

nginx -g "daemon off;"
