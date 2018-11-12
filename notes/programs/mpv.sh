#!/usr/bin/zsh
#        __                     __                    
#  _____/ /_  ____ _____  _____/ /_  ____ ___  ______ 
# / ___/ __ \/ __ `/ __ \/ ___/ __ \/ __ `/ / / / __ \
#/ /__/ / / / /_/ / /_/ (__  ) / / / /_/ / /_/ / / / /
#\___/_/ /_/\__,_/ .___/____/_/ /_/\__,_/\__,_/_/ /_/ 
#               /_/                                   
#		https://github.com/chapshaun
#		https://twitter.com/harimakito

## DESC: mpv notes

## CaSe SeNSitiVE MPV controls

j = toggle subtitles
# = toggle audio Stream
A = toggle aspect ratio

ctrl++ Increase audio delay
ctrl+- Decrease audio delay
[ / ] Decrease / increase speed
m Mute / unmute audio

1 / 2 Decrease / increase contrast
3 / 4 Decrease / increase brightness
5 / 6 Decrease / increase gamma
7 / 8 Decrease / increase saturation
9 / 0 Decrease / increase audio volume
w / e Zoom out / in

RIGHT / LEFT Seek 5 seconds
UP / DOWN Seek 60 seconds

p Pause / playback mode
f Toggle fullscreen
m Mute / unmute audio
v Subtitle visibility
s Take a screenshot
S Take a screenshot without subtitles
Q Quit saving current position to watch later
o Show progress
T Toggle video window on top
r / t Move subtitles up / down

CMDS:

mpv --shuffle <dir>
