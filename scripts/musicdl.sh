#!/usr/bin/zsh
#        __                     __                    
#  _____/ /_  ____ _____  _____/ /_  ____ ___  ______ 
# / ___/ __ \/ __ `/ __ \/ ___/ __ \/ __ `/ / / / __ \
#/ /__/ / / / /_/ / /_/ (__  ) / / / /_/ / /_/ / / / /
#\___/_/ /_/\__,_/ .___/____/_/ /_/\__,_/\__,_/_/ /_/ 
#               /_/                                   
#		https://github.com/chapshaun
#		https://twitter.com/harimakito

## DESC: download songs and convert to mp3
## REQUIREMENTS: youtube-dl ffmpeg

echo "Video? [y/N]: ";
read ANSWER;
if [ "$ANSWER" = "y" ] || [ "$ANSWER" = "Y" ]
then
    echo "Enter source URL: ";
    read URL;
    notify-send -i " " 'Download Starting ...' -t 5000
    youtube-dl $URL
    notify-send -i " " 'Download Finished ...' -t 5000
else
    echo "Enter source URL: ";
    read URL;
    echo "Enter name: ";
    read NAME;
    notify-send -i " " 'Download Starting ...' -t 5000
    youtube-dl -f 140 $URL -o "audio.m4a"
    ffmpeg -i "audio.m4a" -y "$NAME.mp3"
    rm "audio.m4a"
    notify-send -i " " 'Download Finished ...' -t 5000
fi




