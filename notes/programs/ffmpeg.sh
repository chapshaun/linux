#!/usr/bin/zsh
#        __                     __                    
#  _____/ /_  ____ _____  _____/ /_  ____ ___  ______ 
# / ___/ __ \/ __ `/ __ \/ ___/ __ \/ __ `/ / / / __ \
#/ /__/ / / / /_/ / /_/ (__  ) / / / /_/ / /_/ / / / /
#\___/_/ /_/\__,_/ .___/____/_/ /_/\__,_/\__,_/_/ /_/ 
#               /_/                                   
#		https://github.com/chapshaun
#		https://twitter.com/harimakito

## DESC: ffmpeg notes

## Audio
## ----------------------------------------
## from video
ffmpeg -i 'input.mp4' -vn -y 'output.mp3'

## from audio [-ab 128k -ar 44100]
ffmpeg -i 'input.webm' -y 'output.mp3'

## Video
## ----------------------------------------
## combine video and audio
ffmpeg -i 'video.mp4' -i 'audio.mp3' -codec copy -shortest 'output.mp4'

## WMV

## MKV


# combine parts of videos
ffmpeg -i input1.mp4 -c copy -bsf:v h264_mp4toannexb -f mpegts intermediate1.ts
ffmpeg -i input2.mp4 -c copy -bsf:v h264_mp4toannexb -f mpegts intermediate2.ts
ffmpeg -i "concat:intermediate1.ts|intermediate2.ts" -c copy -bsf:a aac_adtstoasc output.mp4


#certain cut certain times in videos
ffmpeg -ss 00:01:00 -i input.mp4 -to 00:02:00 -c copy output.mp4
