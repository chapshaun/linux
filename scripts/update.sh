#!/usr/bin/zsh
#        __                     __                    
#  _____/ /_  ____ _____  _____/ /_  ____ ___  ______ 
# / ___/ __ \/ __ `/ __ \/ ___/ __ \/ __ `/ / / / __ \
#/ /__/ / / / /_/ / /_/ (__  ) / / / /_/ / /_/ / / / /
#\___/_/ /_/\__,_/ .___/____/_/ /_/\__,_/\__,_/_/ /_/ 
#               /_/                                   
#		https://github.com/chapshaun
#		https://twitter.com/harimakito

## DESC: quick update script
## REQUIREMENTS: 

## Debian ------------------
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get autoremove
sudo youtube-dl -U
# neofetch

## Arch --------------------
# sudo pacman -Syyu
# yaourt -Syu
# sudo youtube-dl -U
# archey3

## Clear
echo "Clear? [Y/n]: ";
read ANSWER;
if [ "$ANSWER" = "n" ] || [ "$ANSWER" = "N" ]
then
        :
else
        clear
fi

