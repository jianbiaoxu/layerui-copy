FROM v2fly/v2fly-core:latest

# RUN apk add caddy
RUN apk add nginx
RUN apk add gettext
RUN apk add curl
RUN apk add jq

COPY layui_doc.tar /root/html/

COPY config.json.tp /root/
COPY nginx.template.conf /root/
# COPY caddy.template.conf /root/
# COPY Caddyfile /root/

ADD startup.sh /startup.sh
RUN chmod +x /startup.sh

CMD /startup.sh


