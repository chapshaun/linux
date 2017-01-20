#this will restart tmux session for weo (make sure you are detached 
#or that your tmux sessions are empty
tmux kill-session -t weo
tmux source-file ~/.tmux.conf
~/shell-scripts/tmux-session.sh restore
tmux a -t weo

