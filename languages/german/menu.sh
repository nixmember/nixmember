#!/bin/bash

echo "Choose a option: "

PS3="> "

select option in "Setup" "Info" "Quit"
do
    case $option in
        "Setup" ) source languages/english/setup.sh; break;;
        "Info" ) source languages/english/base.sh; break;;
        "Quit" ) exit;;
        * ) echo "No such option";;
    esac
done

