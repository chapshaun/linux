#!/usr/bin/zsh
#        __                     __                    
#  _____/ /_  ____ _____  _____/ /_  ____ ___  ______ 
# / ___/ __ \/ __ `/ __ \/ ___/ __ \/ __ `/ / / / __ \
#/ /__/ / / / /_/ / /_/ (__  ) / / / /_/ / /_/ / / / /
#\___/_/ /_/\__,_/ .___/____/_/ /_/\__,_/\__,_/_/ /_/ 
#               /_/                                   
#		https://github.com/chapshaun
#		https://twitter.com/harimakito

## DESC: 
## REQUIREMENTS:

echo "Pixiv/Deviant art? [y/N]";
read ANS;
if [  "$ANS" = "Y" ] || [  "$ANS" = "y" ]
then
    echo "Username:";
    read username;
    echo "Password:";
    stty -echo
    read password;
    stty echo

    notify-send -i " " 'Download Starting ...' -t 5000
    gallery-dl -u $username -p $password $1;
    notify-send -i " " 'Download Finished ...' -t 5000
else
    notify-send -i " " 'Download Starting ...' -t 5000
    gallery-dl $1;
    notify-send -i " " 'Download Finished ...' -t 5000
fi

