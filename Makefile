run: build
	docker-compose -f docker-compose.yml up -d
build: purge
	docker-compose -f docker-compose.yml build
	docker-compose -f docker-compose.yml create

purge:
	docker-compose -f docker-compose.yml stop
	docker-compose -f docker-compose.yml rm -vf
