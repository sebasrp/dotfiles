#!/bin/sh
session="${USER//./}"
window="$session:1"

lines="$(tput lines)"
columns="$(tput cols)"

tmux -2 new-session -d -x "$columns" -y "$lines" -s "$session"
tmux split-window -v -l 85%
tmux select-pane -t 0
tmux split-window -h -l 30% 'tty-clock -c'

tmux select-pane -t 2

# Attach to session
tmux -2 attach-session -t "$session"
