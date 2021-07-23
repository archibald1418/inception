FROM debian:buster

RUN apt-get update
RUN apt-get install -y vim openssl nginx

#nginx.conf
RUN rm -f /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
COPY ./nginx.conf /etc/nginx/sites-available/nginx.conf
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf


# RUN chown -R www-data /var/www/html

COPY ./make_cert.sh  /opt/
COPY ./run.sh  /opt/run.sh

# RUN /bin/bash /opt/make_cert.sh

# EXPOSE 8080

VOLUME /static

ENTRYPOINT ["./opt/run.sh"]