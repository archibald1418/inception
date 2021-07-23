YML_DIR=./srcs/docker-compose.yml
VOLUME_DIR=/home/ldonita/data

all:
	docker-compose -f ${YML_DIR} --env-file=./srcs/.env up --build -d
clean:
	rm -rf ${VOLUME_DIR}/*
	docker rm nginx;
	docker rm mariadb;
	docker rm ftp-server;
	docker rm wordpress_php;
up:
	docker-compose -f ${YML_DIR} --env-file=./srcs/.env up -d
down:
	docker-compose -f ${YML_DIR} down
	
wordpress_php:
	docker build -t wordpress_php ./srcs/wordpress_php/
	docker run --name wordpress_php -d wordpress_php
re:
	$(MAKE) down
	$(MAKE) clean
	$(MAKE) all

