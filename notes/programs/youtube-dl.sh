#!/usr/bin/zsh
#        __                     __                    
#  _____/ /_  ____ _____  _____/ /_  ____ ___  ______ 
# / ___/ __ \/ __ `/ __ \/ ___/ __ \/ __ `/ / / / __ \
#/ /__/ / / / /_/ / /_/ (__  ) / / / /_/ / /_/ / / / /
#\___/_/ /_/\__,_/ .___/____/_/ /_/\__,_/\__,_/_/ /_/ 
#               /_/                                   
#		https://github.com/chapshaun
#		https://twitter.com/harimakito

## DESC: youtube-dl notes
## REQUIREMENTS: curl

## Install: Look here for latest updates: https://github.com/rg3/youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl

sudo chmod a+rx /usr/local/bin/youtube-dl

## ------------------------------------------------------------------------------

## Update:
sudo youtube-dl -U

## Simple example
youtube-dl -F <link>

## <code> will be given
youtube-dl -f <code> <link> --output 'video_name.mp4'
