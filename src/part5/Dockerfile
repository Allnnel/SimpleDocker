FROM ubuntu:20.04

RUN useradd  rhogoron

COPY nginx.conf /etc/nginx/nginx.conf
COPY main.c /

RUN apt-get update; \
    apt-get install -y nginx gcc spawn-fcgi libfcgi-dev;\
    rm -rf /var/lib/apt/lists

USER rhogoron
