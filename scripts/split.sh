#!/bin/bash
#        __                     __                    
#  _____/ /_  ____ _____  _____/ /_  ____ ___  ______ 
# / ___/ __ \/ __ `/ __ \/ ___/ __ \/ __ `/ / / / __ \
#/ /__/ / / / /_/ / /_/ (__  ) / / / /_/ / /_/ / / / /
#\___/_/ /_/\__,_/ .___/____/_/ /_/\__,_/\__,_/_/ /_/ 
#               /_/                                   
#		https://github.com/chapshaun
#		https://twitter.com/harimakito

# DESC:

echo "What is the name of the file? :";
read fileName;
#Extract Video
ffmpeg -i $fileName -c copy -map 0:v:0 'video.mp4';
#Extract Audio
ffmpeg -i $fileName -vn -y 'audio.mp3';
#Extract Subs
ffmpeg -txt_format text -i $fileName output.srt