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

for link in `cat ~/manga_links.txt`
do
	notify-send -i " " 'Download Starting ...' -t 5000
    gallery-dl -d ~/gallery-dl $link --zip
	notify-send -i " " 'Download Finished ...' -t 5000
done
echo "Clear '~/manga_links.txt?' [y/N]";
read ANS;
if [ "$ANS" = "Y" ] || [ "$ANS" = "y" ]
then 
	rm ~/manga_links.txt
	touch ~/manga_links.txt
fi
