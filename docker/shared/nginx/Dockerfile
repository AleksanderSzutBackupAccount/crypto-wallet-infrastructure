FROM nginx:1.23

ENV DOMAIN_NAME='localhost'

WORKDIR /app

COPY ./scripts /scripts

RUN chmod -R +x /scripts

COPY ./conf/nginx.conf.template /etc/nginx/nginx.conf.template

ENTRYPOINT ["/scripts/start-container"]