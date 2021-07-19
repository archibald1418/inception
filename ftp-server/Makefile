NAME=ftp-server

all:
	docker build -t ftp-server .
	docker run --name ftp-server --env-file=.env -d ftp-server
it stop:
	docker stop ftp-server
clean: stop
	docker rm ftp-server
re: clean all
