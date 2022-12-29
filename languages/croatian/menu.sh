#!/bin/bash

echo "Odaberite opciju: "

PS3="> "

select option in "Setup" "Info" "Quit"
do
    case $option in
        "Setup" ) source setup.sh; break;;
        "Info" ) source languages/croatian/base.sh; break;;
        "Quit" ) exit;;
        * ) echo "Neponuđena opcija";;
    esac
done

