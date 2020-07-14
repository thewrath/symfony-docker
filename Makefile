path = docker

clean:
	docker system prune -a -f

build:
	cd $(path) && docker build -t symfony_php .

rebuild: clean build

run:
	cd $(path) && docker run --rm -p 81:80 symfony_php

rerun: rebuild run

compose:
	docker-compose up --build -d