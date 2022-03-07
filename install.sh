#!/bin/bash
chmod +x main.sh
chmod +x functions/ip-checker.sh

read -p "Installation complete would you like to run the script [y],[n]? " runScript
if [ "$runScript" ==  "y" ]; then
        echo Running script
        ./main.sh
else
        echo You can manually start the script by running sh main.sh
fi
