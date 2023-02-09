#!/bin/bash

echo "Choose a program to install: "

PS3="> "

select option in "Bitwarden - a central place for all your passwords" "Home Assistant - smart home control" "Jellyfin - all your movies and TV shows in one place!"
do
    case $option in
        "Bitwarden - a central place for all your passwords" ) source ../programs/bitwarden.sh; break;;
        "Home Assistant - smart home control" ) source ../programs/home-assistant.sh; break;;
        "Jellyfin - all your movies and TV shows in one place!" ) source ../programs/jellyfin.sh; break;;
        "Exit" ) exit;;
        * ) echo "No such option";;
    esac
done