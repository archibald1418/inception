FROM debian:buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx mariadb-server
RUN apt-get -y install php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring
RUN apt-get install -y vim openssl perl

# Download and prepare wordpress
ADD https://ru.wordpress.org/latest-ru_RU.tar.gz wordpress.tar 
RUN tar -xf wordpress.tar && rm -rf wordpress.tar

# Download and prepare phpmyadmin
ADD https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz phpmyadmin.tar
RUN tar -xf phpmyadmin.tar && rm -rf phpmyadmin.tar && mv phpMyAdmin-5.0.1-english phpmyadmin

# Copy all files to image
RUN mv wordpress /var/www/html && mv phpmyadmin /var/www/html

# Copy configs
# nginx.conf
RUN rm -f /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
COPY ./srcs/nginx.conf /etc/nginx/sites-available/nginx.conf
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf
#wp-config.phps
COPY ./srcs/wp-config.php /var/www/html/wordpress/wp-config.php
#phpmyadmin configs
COPY ./srcs/config.inc.php /var/www/html/phpmyadmin/

#grant access to nginx
RUN chown -R www-data /var/www/html 

# Copy scripts
COPY ./srcs/seed_db.sql ./srcs/init.sh ./srcs/make_cert.sh ./srcs/commands.sh  ./srcs/toggle_autoindex.sh /opt/

# Expose ports
EXPOSE 80 443

ENV AI_STATUS='on' 

# Run scripts on entrypoint
ENTRYPOINT /bin/bash /opt/commands.sh
