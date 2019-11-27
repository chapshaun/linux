#!/usr/bin/zsh
#        __                     __                    
#  _____/ /_  ____ _____  _____/ /_  ____ ___  ______ 
# / ___/ __ \/ __ `/ __ \/ ___/ __ \/ __ `/ / / / __ \
#/ /__/ / / / /_/ / /_/ (__  ) / / / /_/ / /_/ / / / /
#\___/_/ /_/\__,_/ .___/____/_/ /_/\__,_/\__,_/_/ /_/ 
#               /_/                                   
#		https://github.com/chapshaun
#		https://twitter.com/harimakito

for x in `cat links.txt`
do
	echo "Youtube video? [Y/n]";
	read ANS;
	if [ "$ANS" = "N" ] || [ "$ANS" = "n" ]
	then
		youtube-dl -F $x
		echo "Select format code (combination with '+'): ";
		read CODE;
		notify-send -i " " 'Download Starting ...' -t 5000
		youtube-dl -f $CODE $x
		notify-send -i " " 'Download Finished ...' -t 5000
	else
		notify-send -i " " 'Download Starting; Trying 1080p ...' -t 5000
		youtube-dl -f 137+140 $x
		if [ $? -ne 0 ]; then
            notify-send -i " " 'Download Starting; Trying different code ...' -t 5000
			youtube-dl -F $x
			echo "Select format code (combination with '+'): ";
			read CODE;
			notify-send -i " " 'Download Starting ...' -t 5000
			youtube-dl -f $CODE $x
			notify-send -i " " 'Download Finished ...' -t 5000
        fi
		notify-send -i " " 'Download Finished ...' -t 5000
	fi
done
echo "Clear 'links.txt?' [y/N]";
read ANS;
if [ "$ANS" = "Y" ] || [ "$ANS" = "y" ]
then 
	rm links.txt
	touch links.txt
fi
