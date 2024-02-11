# Задаем базовый образ
FROM nginx:latest

# Устанавливаем необходимые пакеты
RUN apt-get update; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev

# Копируем исходники мини-сервера внутрь образа
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./main.c /main.c
COPY ./RunMiniServer.sh /RunMiniServer.sh
