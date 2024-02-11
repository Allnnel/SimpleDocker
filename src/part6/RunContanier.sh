#!/bin/bash

docker-compose build
docker-compose up -d

sleep 1

echo "--connection completed--"
 curl localhost:80
 curl localhost:80/status
echo "------------------------"
