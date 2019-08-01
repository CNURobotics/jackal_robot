#!/bin/bash
export ROSUSER=chrislab
export ROSENV=CHRISLab
source /home/$ROSUSER/$ROSENV/devel/setup.bash

#Session name variable
SESSION="ros-start"

#start new session with proper name, disconnect.
tmux new-session -d -s $SESSION
tmux send-keys "bash" C-m

tmux new-window -t $SESSION:1 -n "roscore"
#C-m means control-m which is interpreted by bash as return.
tmux send-keys "bash" C-m
tmux send-keys "roscore" C-m

sleep 5

tmux new-window -t $SESSION:2 -n "base"
tmux send-keys "bash" C-m
tmux send-keys "roslaunch chris_jackal_bringup chris_jackal_base.launch" C-m

sleep 5

tmux new-window -t $SESSION:3 -n "accessories"
tmux send-keys "bash" C-m
tmux send-keys "roslaunch chris_jackal_bringup chris_jackal_bringup.launch" C-m

tmux select-window -t $SESSION:0
