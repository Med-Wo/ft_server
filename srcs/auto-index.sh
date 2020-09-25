#!/bin/bash

if [ $1 = "off" ]
then
	echo "auto-index off"
	cp auto-index-off /etc/nginx/sites-available/localhost
	service nginx restart
elif [ $1 = "on" ]
then
	echo "auto-index on"
	cp auto-index-on /etc/nginx/sites-available/localhost
	service nginx restart
else
    echo "Incorrect input"
    echo "Usage: ./auto-index [on/off]"
    exit 1
fi