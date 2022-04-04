all:
	docker-compose -f ./srcs/docker-compose.yml up

clean:
	docker-compose -f ./srcs/docker-compose.yml down

fclean:
	docker rmi -f db wordpress nginx
	docker container rm -f db wordpress nginx
	docker network rm my-net
	docker volume rm wordpress db

re: clean all

.PHONY: all re clean
