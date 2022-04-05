#!/bin/bash

echo "Removing container"
 docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)

echo "Removing image"
docker rmi $(docker images -q)
