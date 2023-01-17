#!/bin/bash

echo "Odaberite program koji želite instalirati: "

PS3="> "

select option in "Bitwarden - centralno mjesto za sve vaše lozinke" "Home Assistant - program koji vam pomaže upravljati svojim domom" "Jellyfin - svi vaši filmovi i serije na jednom mjestu!"
do
    case $option in
        "Bitwarden - centralno mjesto za sve vaše lozinke (instalacija samo na engleskom jeziku)" ) source languages/croatian/programs/bitwarden.sh; break;;
        "Home Assistant - program koji vam pomaže upravljati svojim domom" ) source programs/home-assistant.sh; break;;
        "Jellyfin - svi vaši filmovi i serije na jednom mjestu!" ) source languages/croatian/programs/jellyfin.sh; break;;
        "Izlaz" ) exit;;
        * ) echo "Neponuđena opcija";;
    esac
done