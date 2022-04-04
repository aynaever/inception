# Base image debian:buster
FROM	debian:buster

# Update and Upgrade
RUN	apt update -y; apt upgrade -y;

# Install php-fpm, nvim, php-mysql and wget
RUN	apt install -y php-fpm php-mysql neovim wget;

# Downlaod wordpress and Extract in /var/www/
WORKDIR	/var/www/
RUN	["wget", "https://wordpress.org/latest.tar.gz"]
RUN	["tar", "xf", "latest.tar.gz"]

# Copy configuration file to container
COPY	./conf/www.conf /etc/php/7.3/fpm/pool.d/

# Command run when container starts: Run php-fpm in the foreground
RUN		mkdir -p /run/php/
ENTRYPOINT	["/bin/bash", "-c", "php-fpm7.3 -F -R"]
