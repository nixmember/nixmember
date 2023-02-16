#!/bin/bash

if [ -f "/usr/bin/docker" ]; then
    sudo adduser bitwarden
    sudo passwd bitwarden
    sudo usermod -aG docker bitwarden
    sudo mkdir /opt/bitwarden
    sudo chmod -R 700 /opt/bitwarden
    sudo chown -R bitwarden:bitwarden /opt/bitwarden
    runuser -l bitwarden -c 'curl -Lso bitwarden.sh https://go.btwrdn.co/bw-sh && chmod 700 bitwarden.sh'
    runuser -l bitwarden -c './bitwarden.sh install'
	runuser -l bitwarden -c './bitwarden.sh start'
else 
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo apt install docker-compose
    sudo adduser bitwarden
    sudo passwd bitwarden
    sudo usermod -aG docker bitwarden
    sudo mkdir /opt/bitwarden
    sudo chmod -R 700 /opt/bitwarden
    sudo chown -R bitwarden:bitwarden /opt/bitwarden
    runuser -l bitwarden -c 'curl -Lso bitwarden.sh https://go.btwrdn.co/bw-sh && chmod 700 bitwarden.sh'
    runuser -l bitwarden -c './bitwarden.sh install'
	runuser -l bitwarden -c './bitwarden.sh start'
fi
