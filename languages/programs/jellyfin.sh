#!/bin/bash

read -p 'Odaberite mapu koja sadrži vaše medije (filmove, serije)' mapa

if [ -f "/usr/bin/docker" ]; then
	echo 'Sve informacije o ovome programu bit će spremljene u $HOME/jellyfin'
	mkdir $HOME/jellyfin
	mkdir $HOME/jellyfin/config
	mkdir $HOME/jellyfin/cache
	cat > ~/home-assistant/docker-compose.yml << END
	version: '3.5'
	services:
	  jellyfin:
	    image: jellyfin/jellyfin
	    container_name: jellyfin
	    user: uid:gid
	    network_mode: 'host'
	    volumes:
	      - $HOME/jellyfin/config:/config
	      - $HOME/jellyfin/cache:/cache
	      - $mapa:/media
	    restart: 'unless-stopped'
	    # Optional - alternative address used for autodiscovery
	    environment:
	      - JELLYFIN_PublishedServerUrl=http://example.com
	    # Optional - may be necessary for docker healthcheck to pass if running in host network mode
	    extra_hosts:
	      - "host.docker.internal:host-gateway"
END
	cd $HOME/jellyfin
	docker-compose up -d
else
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo apt install docker-compose

echo 'Sve informacije o ovome programu bit će spremljene u $HOME/jellyfin'
mkdir $HOME/jellyfin
mkdir $HOME/jellyfin/config
mkdir $HOME/jellyfin/cache
cat > ~/home-assistant/docker-compose.yml << END
version: '3.5'
services:
  jellyfin:
    image: jellyfin/jellyfin
    container_name: jellyfin
    user: uid:gid
    network_mode: 'host'
    volumes:
      - $HOME/jellyfin/config:/config
      - $HOME/jellyfin/cache:/cache
      - $mapa:/media
    restart: 'unless-stopped'
    # Optional - alternative address used for autodiscovery
    environment:
      - JELLYFIN_PublishedServerUrl=http://example.com
    # Optional - may be necessary for docker healthcheck to pass if running in host network mode
    extra_hosts:
      - "host.docker.internal:host-gateway"
END
	cd $HOME/jellyfin
	docker-compose up -d
fi
