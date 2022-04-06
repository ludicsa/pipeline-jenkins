#!/bin/bash

STATUS=$(docker ps | grep ago)
if [ -n "$STATUS" ] 
then
	echo "Container successfully up"
else
	echo "Container not up"
fi
