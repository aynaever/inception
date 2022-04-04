# Build the project
all:
	docker-compose -f ./srcs/docker-compose.yml up

# Stop containers and networks
clean:
	docker-compose -f ./srcs/docker-compose.yml down

# Clean everything, images, containers, volumes, networks
fclean:
	docker rmi -f db wordpress nginx
	docker container rm -f db wordpress nginx
	docker network rm my-net
	docker volume rm wordpress db

# Re-build the project
re: clean all

.PHONY: all re clean
