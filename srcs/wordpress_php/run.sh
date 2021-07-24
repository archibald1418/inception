#!/bin/bash
# wp core install --path=/static/wordpress --url=$DOMAIN_NAME --title=$SITE_TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root;

# if [ ! -d /static/wordpress ]
# then
sleep 2;
mv -f /wordpress /static
wp core install --path=/static/wordpress --url=${DOMAIN_NAME} --title='${SITE_TITLE}' --admin_user=${ADMIN_USER} --admin_password=${ADMIN_PASSWORD} --admin_email=${ADMIN_EMAIL} --allow-root --debug;
wp user create ${EDITOR_USER} ${EDITOR_EMAIL} --role=editor --user_pass=${EDITOR_PASSWORD} --path=/static/wordpress --allow-root --debug;
# fi;
/usr/sbin/php-fpm7.3 -F;