#!/bin/bash

echo "Choose a program to install: "

PS3="> "
DIR="$( echo $(cd ../ && pwd) )/nixmember/languages/programs"

select option in "Bitwarden - a central place for all your passwords" "Home Assistant - smart home control" "Jellyfin - all your movies and TV shows in one place!"
do
    case $option in
        "Bitwarden - a central place for all your passwords" ) source $DIR/bitwarden.sh; break;;
        "Home Assistant - smart home control" ) source $DIR/home-assistant.sh; break;;
        "Jellyfin - all your movies and TV shows in one place!" ) source $DIR/jellyfin.sh; break;;
        "Exit" ) exit;;
        * ) echo "No such option";;
    esac
done