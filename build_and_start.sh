#!/bin/bash
# This is a script that will build a docker image and tag it with latest

echo "Building Docker Image"
serviceName=${PWD##*/}
echo "${serviceName}:latest"

docker build . -t ${serviceName} 
docker ps -aq | awk '{print $1}' | xargs -I {} docker rm {}
docker run --name ${serviceName} -p 5000:5000 ${serviceName}


