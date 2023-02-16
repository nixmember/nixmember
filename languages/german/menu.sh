#!/bin/bash

echo "Wählen Sie eine Option: "

PS3="> "

select option in "Aufstellen" "Information" "Aufhören"
do
    case $option in
        "Aufstellen" ) source languages/german/setup.sh; break;;
        "Information" ) source languages/german/base.sh; break;;
        "Aufhören" ) exit;;
        * ) echo "Keine solche Option";;
    esac
done

