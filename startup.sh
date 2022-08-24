#!/bin/sh

envsubst < /root/config.json.tp > /root/config.json
envsubst '\$PORT' < /root/nginx.template.conf > /root/nginx.conf

# run layui-doc
v2ray -config /root/config.json & nginx -c /root/nginx.conf


