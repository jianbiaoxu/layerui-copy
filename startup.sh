#!/bin/sh

envsubst < /root/config.json.tp > /root/config.json
envsubst '\$PORT' < /root/nginx.template.conf > /root/nginx.conf

# run layui-doc
/usr/sbin/nginx -c /root/nginx.conf


