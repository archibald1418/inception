#!/bin/sh

rc default

#setup mariadb
/etc/init.d/mariadb setup

rc-service mariadb start
echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;" | mysql -u root --skip-password;
echo "DROP USER IF EXISTS '$MYSQL_USER'@'%';" | mysql -u root --skip-password;
echo "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql -u root --skip-password;
echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%';" | mysql -u root --skip-password;
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password;

#mysql -u root --skip-password -e "
#CREATE DATABASE wordpress;
#CREATE USER ldonita@'%' IDENTIFIED BY 'lolkek';
#GRANT ALL PRIVILEGES ON *.* ldonita@'%';
#FLUSH PRIVILEGES;
#"

rc-service mariadb stop;

/usr/bin/mysqld_safe;
