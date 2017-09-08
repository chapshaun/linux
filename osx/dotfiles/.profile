# Show hidden files
alias hidden-show="defaults write com.apple.finder AppleShowAllFiles TRUE"
alias hidden-hide="defaults write com.apple.finder AppleShowAllFiles FALSE"
alias launchpad-organize="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"

# Directories
alias home="cd ~/"
alias downloads="cd ~/Downloads"
alias workspace="cd ~/Workspace"
alias documents="cd ~/Documents"
alias music="cd ~/Music"
alias pictures="cd ~/Pictures"
alias videos="cd ~/Movies"
alias desktop="cd ~/Desktop"
alias GitHub="cd ~/GitHub"
alias applications="cd ~/Applications"


#ranger
alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'

#other
alias ll='ls -l'
alias la='ls -a'


# Make ls use colors
export CLICOLOR=1
alias ls='ls -Fa'

# define colors
C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"

export PS1="\n$C_LIGHTGREEN\u$C_DARKGRAY@$C_BLUE\h $C_DARKGRAY: $C_LIGHTYELLOW\w\n$C_DARKGRAY\$$C_DEFAULT "

