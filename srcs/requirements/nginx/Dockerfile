# Base image debian:buster
FROM	debian:buster

# Update and Upgrade
RUN	apt update; apt upgrade -y;

# Install nginx, openssl and nvim
RUN	apt install -y nginx openssl neovim ;

# Copy configuration file to image
COPY	./conf/default /etc/nginx/sites-available/
COPY	./conf/ssl-params.conf /etc/nginx/snippets/
COPY	./conf/self-signed.conf /etc/nginx/snippets/
COPY	./tools/nginx-selfsigned.crt /etc/ssl/certs/
COPY	./tools/nginx-selfsigned.key /etc/ssl/private/

# Create wordpress directory
RUN	mkdir -p /var/www/wordpress

# OpenSSL command
RUN	    openssl dhparam -out /etc/nginx/dhparam.pem 4096

# Execute nginx in the foreground
ENTRYPOINT	["/bin/bash", "-c", "nginx -g 'daemon off;'"]

# Command that will be executed by default whenn container is run
CMD	["/bin/bash/"]
