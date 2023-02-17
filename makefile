USER = $(shell cat .env | grep MONGO_USER | cut -d= -f2)
PASSWORD = $(shell cat .env | grep MONGO_PASSWORD | cut -d= -f2)

up:
	# Start containers
	@docker compose up -d

down:
	# Stop containers
	@docker compose down

downwipe:
	# Stop containers and remove volumes (warning: all data will be lost!)
	@docker compose down -v

shell:
	# Start Mongo container's shell
	@docker compose exec mongodb bash

mongo:
	# Start Mongo command line inside container
	@@docker compose exec mongodb mongosh --host mongodb --username ${USER} --password ${PASSWORD}
