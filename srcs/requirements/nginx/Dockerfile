# Base image debian:buster
FROM	debian:buster

# Update and Upgrade
RUN	apt update; apt upgrade -y;

# Install nginx and nvim
RUN	apt install -y nginx neovim;

# Execute nginx in the foreground
ENTRYPOINT	["/bin/bash", "-c", "nginx -g 'daemon off;'"]

# Command that will be executed by default whenn container is run
CMD	["/bin/bash/"]
