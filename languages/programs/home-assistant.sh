#!/bin/bash

echo 'Sve bitne informacije biti će spremljene u $HOME/home-assistant'

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
docker-compose up -d $HOME/home-assistant/docker-compose.yml
