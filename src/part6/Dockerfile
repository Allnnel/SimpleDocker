FROM nginx:latest

RUN useradd  rhogoron

COPY ./server/nginx.conf /etc/nginx/nginx.conf
COPY ./server/main.c ./

RUN apt-get update; \
    apt-get install -y nginx gcc spawn-fcgi libfcgi-dev;\
    rm -rf /var/lib/apt/lists \
    && gcc /main.c -lfcgi -o /server


ENTRYPOINT service nginx start && spawn-fcgi -p 8080 -n server
