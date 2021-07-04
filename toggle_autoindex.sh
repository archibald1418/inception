#!/bin/bash



FILE="/etc/nginx/sites-available/nginx.conf";
IS_ON=$(grep -o 'autoindex on' $FILE);
IS_OFF=$(grep -o 'autoindex off' $FILE);
if [ ! -z "$IS_ON" ]; then
	sed -i -e 's/autoindex on/autoindex off/' $FILE;
elif [ ! -z "$IS_OFF" ]; then
	sed -i -e 's/autoindex off/autoindex on/' $FILE;
fi
nginx -s reload;