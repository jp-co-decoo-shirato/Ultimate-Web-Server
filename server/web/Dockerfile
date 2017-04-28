FROM nginx:alpine

RUN adduser -D -H -s /bin/sh -u 1000 worker

COPY ./nginx/vhost.d/ /etc/nginx/conf.d/
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
