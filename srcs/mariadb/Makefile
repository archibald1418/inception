all:
	docker build -t mariadb .
	docker run --name mariadb --env-file ./.env -d mariadb
stop:
	docker stop mariadb
clean: stop
	docker rm mariadb
re: clean all
