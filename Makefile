YML_DIR=./srcs/docker-compose.yml
VOLUME_DIR=/home/ldonita/data

all:
	mkdir -p ${VOLUME_DIR}/wordpress
	mkdir -p ${VOLUME_DIR}/dbdata
	docker-compose -f ${YML_DIR} --env-file=./srcs/.env up --build -d
clean:
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);
	#docker network rm $$(docker network ls -q)
up:
	docker-compose -f ${YML_DIR} --env-file=./srcs/.env up --build -d
down:
	docker-compose -f ${YML_DIR} down
logs_all:
	sudo docker-compose -f ${YML_DIR} logs
re:
	$(MAKE) down
	$(MAKE) clean
	$(MAKE) all

