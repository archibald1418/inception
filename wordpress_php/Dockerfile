FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install php7.3 php-mysql php7.3-fpm php-pdo php-gd php-cli php-mbstring

RUN mkdir -p /static
#VOLUME /static
# RUN mkdir -p /static/wordpress && mkdir -p /static/phpmyadmin


# Download and prepare wordpress
ADD https://ru.wordpress.org/latest-ru_RU.tar.gz wordpress.tar 
RUN tar -xf wordpress.tar && rm -rf wordpress.tar
COPY ./wp-config.php /wordpress/wp-config.php
COPY ./www.conf /etc/php/7.3/fpm/php-fpm.conf
COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf


COPY ./run.sh /opt/run.sh
RUN chmod +x /opt/run.sh
# RUN mv wordpress /static

EXPOSE 3306
EXPOSE 9000

CMD ./opt/run.sh
# CMD bash
# run in exec format (as pid 1)
