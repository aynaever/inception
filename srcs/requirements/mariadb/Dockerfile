# Base Image debian:buster
FROM	debian:buster

# Update and Upgrade packages
RUN	apt update -y; apt upgrade -y;

# Install mariadb-server, nvim
RUN	apt install -y mariadb-server neovim;

# Copy configuration to image
COPY	./tools /var/www
COPY	./conf /etc/mysql/mariadb.conf.d/

# Create database and users
RUN	service mysql start && mysql < /var/www/install.sql;

# Start mysql service (daemon)
ENTRYPOINT ["mysqld"]
