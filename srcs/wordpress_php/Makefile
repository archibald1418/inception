all:
	docker build -t wordpress_php .
	docker run --name wordpress_php --env-file ./.env -d wordpress_php
	# docker run --name wordpress_php --env-file ./.env -it wordpress_php bash
	
stop:
	docker stop wordpress_php
clean: stop
	docker rm wordpress_php
re: clean all
