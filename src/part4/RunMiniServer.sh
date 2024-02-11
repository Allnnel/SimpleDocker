#!/bin/bash

gcc main.c -lfcgi

echo "--connection starts--"
lsof -i :8080
echo "---------------------"

spawn-fcgi -p 8080 ./a.out

service nginx start

echo "--connection completed--"
lsof -i :8080
echo "------------------------"
