#!/bin/bash

echo "Odaberite program koji želite instalirati: "

PS3="> "

select option in "Bitwarden - centralno mjesto za sve vaše lozinke" "Home Assistant - program koji vam pomaže upravljati svojim domom" ""
do
    case $option in
        "Bitwarden - centralno mjesto za sve vaše lozinke" ) source languages/croatian/programs/bitwarden.sh; break;;
        "Home Assistant - program koji vam pomaže upravljati svojim domom" ) source languages/croatian/programs/home-assistant.sh; break;;
        "Quit" ) exit;;
        * ) echo "Neponuđena opcija";;
    esac
done