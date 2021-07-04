


all:
	docker-compose up --build -d
clean:
	rm -rf /home/ldonita/data/*
up:
	docker-compose up -d
down:
	docker-compose down
	
wordpress_php:
	docker build -t wordpress_php ./wordpress_php/
	docker run --name wordpress_php -d wordpress_php
re:
	$(MAKE) down
	$(MAKE) clean
	$(MAKE) all

