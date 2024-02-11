#!/bin/bash

docker stop container-server
docker rm container-server
docker rmi -f nginx:1.0
