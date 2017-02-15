#!/bin/bash

docker stop dev-mysql

docker rm dev-mysql

docker build -f ./Dockerfile -t dev-mysql:1.0 .

docker run --restart="unless-stopped" --name dev-mysql -p 3306:3306 -d dev-mysql:1.0

echo "======================="
echo "Ctrl-C to exit log view"
echo "======================="

docker logs -f dev-mysql

