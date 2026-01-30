#!/bin/sh

cd ~/.config

#This names the session

SESSION="Util"

if tmux has-session -t $SESSION 2>/dev/null; then

	notify-send  "Session $SESSION already exists. Attaching to it."

    tmux attach-session -t $SESSION 
else
	notify-send "Creating New $SESSION"

	tmux new-session -d -s $SESSION btop

	# Name first window
	tmux rename-window -t btop
	# Create and setup pane for text editing
	tmux new-window -t $SESSION:2 -n 'Nvim' "nvim ."

	tmux new-window -t $SESSION:3 -n 'ssh sybox' "ssh sybox-macpro"

	tmux new-window -t $SESSION:4 


fi

tmux attach-session -t $SESSION 

