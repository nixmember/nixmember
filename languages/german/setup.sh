#!/bin/bash

echo "Wählen Sie ein zu installierendes Programm aus: "

PS3="> "
DIR="$( echo $(cd ../ && pwd) )/nixmember/languages/programs"

select option in "Bitwarden - ein zentraler Ort für alle Ihre Passwörter" "Home Assistant - Smart Home-Steuerung" "Jellyfin – all deine Filme und Fernsehsendungen an einem Ort!"
do
    case $option in
        "Bitwarden - ein zentraler Ort für alle Ihre Passwörter" ) source $DIR/bitwarden.sh; break;;
        "Home Assistant - Smart Home-Steuerung" ) source $DIR/home-assistant.sh; break;;
        "Jellyfin – all deine Filme und Fernsehsendungen an einem Ort!" ) source $DIR/jellyfin.sh; break;;
        "Ausfahrt" ) exit;;
        * ) echo "Keine solche Option";;
    esac
done