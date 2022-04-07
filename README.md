[#](#) Inception  42  
Setting a complete Web app (Nginx, wordpress+php-fpm, MariaDB) in Docker, each service in its own Container.

## Table of Contents
* [What is Inception ?](#what-is-inception)
* [What topics I need to know about Docker ?](#topics)
* [What Technologies are used ?](#technologies)
* [How the web app's architecture will look like ?](#architecture)
* [How to run the Project ?](#run)
* [How can I change the database's password ?](#change-password)
* [Where the database and website's files are stored ?](#files-stored)
* [How can I configure each Service ?](#configuration)

<a name="what-is-inception"></a>
## What is Inception ?
Inception is a 42 project, that aims to broaden student's knowledge about the world of Docker and containerization.

<a name="topics"></a>
## What topics I need to know about Docker ?
1. Dockerfile
2. docker-compose
3. Docker Networks
4. Docker Volumes
5. Docker Images
6. Docker Containers
7. Docker Environment Variables

<a name="technologies"></a>
## What Technologies are used ?
1. Containerization : Docker
2. Web server : Nginx
3. CMS : Wordpress
4. Backend Programming Language : php
5. Database Server : MariaDB

<a name="architecture"></a>
## How the web app's architecture will look like ?
Each service will have its own container (Nginx, Wordpress+php, MariaDB). Services will communicate between each other in a local Docker Network, and only the port 443 of the Nginx service will be exposed to the Internet.

<a name="run"></a>
## How to run the Project ?
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

<a name="change-password"></a>
## How to change the database's passwords ?
You can configure them and change the default ones, from **.env** file in the root of the repositery. By changing, the values of each environment variable.

<a name="files-stored"></a>
## Where the database and website's files are stored ?
By default, they are stored in this directory **/home/anaouadi/data/**  
There are two different subdirectories:  
1. wordpress : website's files
2. db : database  

Thanks to Docker volumes, even after stoping your web app or a service, your data will persist and you can always check it and move it from your host machine or make backups.

<a name="configuration"></a>
## How can I configure each service ?
Each service is already configured and customized so it will work smoothly, but if you want to change any configuration, you check the **README.md** of the service that you want in **/inception/srcs/requirements/*service*/README.md**
