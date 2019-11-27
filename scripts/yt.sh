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
## REQUIREMENTS: mpv youtube-dl ffmpeg

echo "Download Video? [y/N]: ";
read ANSWER;
if [ "$ANSWER" = "y" ] || [ "$ANSWER" = "Y" ]
then
    # Download video
    # Audio only?
    echo "Audio only? [y/N]: ";
    read ANSWER;
    if [ "$ANSWER" = "y" ] || [ "$ANSWER" = "Y" ]
    then
        # Download just the audio and convert to mp3
        echo "Enter name: ";
        read NAME;
        notify-send -i " " 'Download Starting ...' -t 5000
        youtube-dl -f 140 $1 -o "audio.m4a"
        # If there is no 140 code
        if [ $? -ne 0 ]; then
            echo "Non-YT site or old ass audio ...";
            echo "Use custom code ...";
            youtube-dl -F $1
            echo "Enter format code: ";
            read CODE;
            youtube-dl -f $CODE $1 -o "audio.m4a"
            ffmpeg -i "audio.m4a" -y "$NAME.mp3"
            rm "audio.m4a"
        fi
        ffmpeg -i "audio.m4a" -y "$NAME.mp3"
        rm "audio.m4a"
        notify-send -i " " 'Download Finished ...' -t 5000

    else
        # Download video in best format first 1080p
        notify-send -i " " 'Download Starting ...' -t 5000
        youtube-dl -f 137+140 $1
        # If there's no 1080p then pick your custom code
        if [ $? -ne 0 ]; then
            echo "Non-YT site or old ass video ...";
            echo "Use custom code or 136 (or lower) + 140 ...";
            youtube-dl -F $1
            echo "Enter format code: ";
            read CODE;
            youtube-dl -f $CODE $1
        fi
        notify-send -i " " 'Download Finished ...' -t 5000
    fi
else
    # View video with 1080p by default
    notify-send -i " " 'View starting ...' -t 5000
    mpv --no-border --autofit=1280x720 --loop --ytdl-format=137+140 $1
    # If there's no 1080p then pick your custom code
    if [ $? -ne 0 ]; then
        echo "Non-YT site or old ass video ...";
        echo "Use custom code or 136 (or lower) + 140 ...";
        youtube-dl -F $1
        echo "Enter format code: ";
        read CODE;
        mpv --no-border --autofit=1280x720 --ytdl-format=$CODE $1
    fi
fi
