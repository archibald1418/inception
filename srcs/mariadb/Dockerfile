FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add mysql mysql-client openrc

COPY ./init.sh /opt/
COPY ./my.cnf /etc/my.cnf

EXPOSE 3306
VOLUME /var/lib/mysql

CMD sh /opt/init.sh
# ENTRYPOINT ["mysqld_safe"]
# CMD ["mysqld"]
# CMD ["bash"]