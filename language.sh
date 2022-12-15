#!/bin/bash

echo "Choose a language/Odaberite jezik/Wähle eine Sprache: "

PS3="> "

select lang in "English" "Hrvatski" "Deutsch" "Quit"
do
    case $lang in
        "English" ) source languages/english/base.sh; break;;
        "Hrvatski" ) source languages/croatian/base.sh; break;;
        "Deutsch" ) source languages/german/base.sh; break;;
        "Quit" ) exit;;
        * ) echo "Invalid option";;
    esac
done

