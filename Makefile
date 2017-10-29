run: build
	docker-compose -f docker-compose.yml up -d
build:
	docker-compose -f docker-compose.yml build
	docker-compose -f docker-compose.yml create

purge:
	docker-compose -f docker-compose.yml stop
	docker-compose -f docker-compose.yml rm -vf
clear-docker-images:
	docker rm $$(docker ps -a -q) -f
	docker rmi $$(docker images -q) -f
