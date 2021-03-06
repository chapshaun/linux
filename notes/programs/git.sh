#!/usr/bin/zsh
#        __                     __                    
#  _____/ /_  ____ _____  _____/ /_  ____ ___  ______ 
# / ___/ __ \/ __ `/ __ \/ ___/ __ \/ __ `/ / / / __ \
#/ /__/ / / / /_/ / /_/ (__  ) / / / /_/ / /_/ / / / /
#\___/_/ /_/\__,_/ .___/____/_/ /_/\__,_/\__,_/_/ /_/ 
#               /_/                                   
#		https://github.com/chapshaun
#		https://twitter.com/harimakito

## DESC: git notes


## Steps to setup GitHub repo:
## -----------------------------------------------------
git init

git add .

git commit -m "initial commit"

git remote add origin <url>

git remove -v

git pull

git branch --set-upstream master origin/master

git push origin master

## -----------------------------------------------------
## Install:

sudo apt-get install git

git init (for your working directory)

git config --global user.email "email.com"
git config --global user.name "username"

git config --global push.default simple

## -----------------------------------------------------

Cache Username and Password:

git config --global credential.helper cache (15mins)

git config --global credential.helper 'cache --timeout=3600'

## -----------------------------------------------------
