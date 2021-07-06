#!/bin/sh
session="${USER//./}"
window="$session:1"

lines="$(tput lines)"
columns="$(tput cols)"

tmux -2 new-session -d -x "$columns" -y "$lines" -s "$session"
tmux new-window -a -t "$window" || exit

tmux split-window -t "$window" -v -p 85
tmux split-window -t "$window" -v -p 30
tmux split-window -t $session:1.0 -h -p 30

# display clock
tmux send-keys -t $session:1.1 'tty-clock -c' Enter

tmux select-window -t "$window"

# Attach to session
tmux -2 attach-session -t "$session"
