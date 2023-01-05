FROM nginx:1.23

ENV DOMAIN_NAME='localhost'

WORKDIR /app

COPY ./scripts /scripts

RUN chmod -R +x /scripts

COPY ./conf/nginx.conf.template /etc/nginx/nginx.conf.template

RUN ["/bin/sh" , "-c" , "envsubst '$DOMAIN_NAME'< /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf"]