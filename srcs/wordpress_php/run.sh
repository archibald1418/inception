#!/bin/bash

mv /wordpress /static;

# TODO:
# wp core install --path=/static --url=${DOMAIN_NAME} --title="$SITE_TITLE" --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL
# wp user create $EDITOR_USER $EDITOR_EMAIL --role=editor --user_pass=$EDITOR_PASSWORD --path=/static
/usr/sbin/php-fpm7.3 -F;
