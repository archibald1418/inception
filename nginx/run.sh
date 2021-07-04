#!/bin/sh

chown -R www-data /static;
./opt/make_cert.sh;
nginx -g 'daemon off;'