#!/bin/bash

docker stop OneContainer
docker stop TwoContainer
docker rm OneContainer
docker rm TwoContainer
docker rmi -f rhogoron:1.0
