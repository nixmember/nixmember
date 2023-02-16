#!/bin/bash

echo "Odaberite opciju: "

PS3="> "

select option in "Instalacija" "Informacije" "Izlaz"
do
    case $option in
        "Instalacija" ) source languages/croatian/setup.sh; break;;
        "Informacije" ) source languages/croatian/base.sh; break;;
        "Izlaz" ) exit;;
        * ) echo "Neponuđena opcija";;
    esac
done

