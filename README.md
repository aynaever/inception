# Inception  42

## What is Inception ? ##
Inception is a 42 project, that aims to broaden student's knowledge about the world of Docker and containerization.

## What topics I need to know about Docker ? ##
1. Dockerfile
2. docker-compose
3. Docker Networks
4. Docker Volumes
5. Docker Images
6. Docker Containers
7. Docker Environment Variables

## What Technologies are used ? ##
1. Web server: Nginx
2. CMS : Wordpress
3. Backend Programming Language : php
4. Database Server : MariaDB

## How the web app's architecture will look like ? ##
Each service will have its own container (Nginx, Wordpress+php, MariaDB). Services will communicate between each other in a local Docker Network, and only the port 443 of the Nginx service will be exposed to the Internet.

## How to run the Project ? ##
1. Clone the repositery:  
	`git clone https://gitlab.com/inception-42`
2. Change the working directory:  
	`cd inception-42`
3. Make sure that you are running dockerd, if not run it by the following command:  
   `service docker start`
4. Run make:  
	`make`  
It will take few minutes first time to build images and download necessary packages.
5. Then you are ready to start setting up your wordpress website, by checking your localhost in your browser.  
   `https://localhost`

## How to change the database's passwords ? ##
You can configure them and change the default ones, from **.env** file in the root of the repositery. By changing, the values of each environment variable.

## Where the database and website's files are stored ? ##
By default, they are stored in this directory **/home/anaouadi/data/**  
There are two different subdirectories:  
1. wordpress : website's files
2. db : database  

Thanks to Docker volumes, even after stoping your web app or a service, your data will persist and you can always check it and move it from your host machine or make backups.

## How can I configure each service ? ##
Each service is already configured and customized so it will work smoothly, but if you want to change any configuration, you check the **README.md** of the service that you want in **/inception/srcs/requirements/*service*/README.md**
