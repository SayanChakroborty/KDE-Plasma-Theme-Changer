#!/bin/sh

sleep 30;

if [[ $(date +"%H") -ge 6 ]] && [[ $(date +"%H") -lt 18 ]] && [[ $(date +"%p") -eq "AM" ]];

then sh ~/Public/GitHub/Plasma-Theme-Changer/LightMode.sh;

else sh ~/Public/GitHub/Plasma-Theme-Changer/DarkMode.sh;

fi
