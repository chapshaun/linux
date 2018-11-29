#!/usr/bin/zsh
#        __                     __                    
#  _____/ /_  ____ _____  _____/ /_  ____ ___  ______ 
# / ___/ __ \/ __ `/ __ \/ ___/ __ \/ __ `/ / / / __ \
#/ /__/ / / / /_/ / /_/ (__  ) / / / /_/ / /_/ / / / /
#\___/_/ /_/\__,_/ .___/____/_/ /_/\__,_/\__,_/_/ /_/ 
#               /_/                                   
#		https://github.com/chapshaun
#		https://twitter.com/harimakito

## DESC: Simple player for youtube urls and various other websites that youtube-dl supports 
## REQUIREMENTS: mpv youtube-dl

echo "Enter URL: ";
read URL;
youtube-dl -F $URL
echo "Enter format code: ";
read CODE;
echo "Loop? [y/N]: ";
read LOOP;
if [ "$LOOP" = "y" ] || [ "$LOOP" = "Y" ]
then
    echo "Looping...";
    mpv --no-border --autofit=1280x720 --loop --ytdl-format=$CODE $URL
else
    echo "Not looping...";
    mpv --no-border --autofit=1280x720 --ytdl-format=$CODE $URL
fi
