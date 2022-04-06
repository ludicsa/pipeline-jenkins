#!/bin/bash

STATUS=$(docker ps | grep flask)
if [ -n "$STATUS" ] 
then
	docker stop flask-python-app && docker rm -f flask-python-app
else
	echo "Container not up"
fi
