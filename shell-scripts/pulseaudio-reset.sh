#this is a fix for when pulseaudio isn't updating the hardware
pulseaudio -k #kills
pulseaudio -D #restart
