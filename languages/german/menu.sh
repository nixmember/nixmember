#!/bin/bash

echo "Wählen Sie eine Option: "

PS3="> "

select option in "Aufstellen" "Information" "Aufhören"
do
    case $option in
        "Aufstellen" ) source languages/english/setup.sh; break;;
        "Information" ) source languages/english/base.sh; break;;
        "Aufhören" ) exit;;
        * ) echo "Keine solche Option";;
    esac
done

