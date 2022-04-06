#!/bin/bash

STATUS=$(docker image ls | grep ago)
if [ -n "$STATUS" ] 
then
	echo "Image successfully builded"
else
	echo "Image was not builded"
fi
