#!/bin/bash

echo "Odaberite opciju: "

PS3="> "

select lang in "Setup" "Info" "Quit"
do
    case $lang in
        "Setup" ) source languages/english/base.sh; break;;
        "Info" ) source languages/german/base.sh; break;;
        "Quit" ) exit;;
        * ) echo "Invalid option";;
    esac
done

