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

for dir in `cat ~/dirs.txt`
do
    # Folder into zip
    zip -r "$dir.zip" "$dir"
    echo "Done.";
    rm -rf "$dir"
done
echo "Delete '~/dirs.txt?' [y/N]";
read ANS;
if [ "$ANS" = "Y" ] || [ "$ANS" = "y" ]
then 
	rm ~/dirs.txt
fi
