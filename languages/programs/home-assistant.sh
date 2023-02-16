#!/bin/bash

echo 'Sve bitne informacije biti će spremljene u $HOME/home-assistant'

if [ -f "/usr/bin/docker" ]; then
	mkdir $HOME/home-assistant
	mkdir $HOME/home-assistant/config
	cat > $HOME/home-assistant/docker-compose.yml << END
	version: '3'
	services:
	  homeassistant:
	    container_name: homeassistant
	    image: "ghcr.io/home-assistant/home-assistant:stable"
	    volumes:
	      - $HOME/home-assistant/config:/config
	      - /etc/localtime:/etc/localtime:ro
	    restart: unless-stopped
	    privileged: true
	    network_mode: host
END
	cd $HOME/home-assistant
	docker-compose up -d docker-compose.yml
else
	curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo apt install docker-compose
	mkdir $HOME/home-assistant
	mkdir $HOME/home-assistant/config
	cat > ~/home-assistant/docker-compose.yml << END
	version: '3'
	services:
	  homeassistant:
	    container_name: homeassistant
	    image: "ghcr.io/home-assistant/home-assistant:stable"
	    volumes:
	      - $HOME/home-assistant/config:/config
	      - /etc/localtime:/etc/localtime:ro
	    restart: unless-stopped
	    privileged: true
	    network_mode: host
END
	cd $HOME/home-assistant
	docker-compose up -d docker-compose.yml
fi
