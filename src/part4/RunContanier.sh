#!/bin/bash

docker build -t nginx:1.0 .
docker run -d -p 80:81 --name container-server nginx:1.0
docker exec container-server bash RunMiniServer.sh

sleep 1

echo "--connection completed--"
curl localhost:80
curl localhost:80/status
echo "------------------------"
