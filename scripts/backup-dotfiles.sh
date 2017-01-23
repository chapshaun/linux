#!/bin/bash
#        __                     __                    
#  _____/ /_  ____ _____  _____/ /_  ____ ___  ______ 
# / ___/ __ \/ __ `/ __ \/ ___/ __ \/ __ `/ / / / __ \
#/ /__/ / / / /_/ / /_/ (__  ) / / / /_/ / /_/ / / / /
#\___/_/ /_/\__,_/ .___/____/_/ /_/\__,_/\__,_/_/ /_/ 
#               /_/                                   
#		https://github.com/chapshaun
#		https://twitter.com/harimakito

# DESC: this will backup all my dot files to github

# DIRs
cp -r ~/.conkysetups ~/GitHub/linux/dotfiles/
cp -r ~/.icons ~/GitHub/linux/dotfiles/
# Config DIR
cp -r ~/.config/htop/ ~/GitHub/linux/dotfiles/
cp -r ~/.config/plank/ ~/GitHub/linux/dotfiles/
cp -r ~/.config/viewnior/ ~/GitHub/linux/dotfiles/

# FILEs
cp ~/.bashrc ~/GitHub/linux/dotfiles/
cp ~/.tmux.conf ~/GitHub/linux/dotfiles/
cp ~/.tmux-session ~/GitHub/linux/dotfiles/
cp ~/.conkyrc ~/GitHub/linux/dotfiles/
cp ~/.gitconfig ~/GitHub/linux/dotfiles/
cp ~/.vimrc ~/GitHub/linux/dotfiles/
cp ~/.face ~/GitHub/linux/dotfiles/
cp ~/.config/ranger/rc.conf ~/GitHub/linux/dotfiles/
cp ~/.config/ranger/rifle.conf ~/GitHub/linux/dotfiles/
# Config Files
cp ~/.config/tear_test.mp4 ~/GitHub/linux/dotfiles/
cp ~/.config/kid3rc ~/GitHub/linux/dotfiles/
cp ~/.config/compton.conf ~/GitHub/linux/dotfiles/