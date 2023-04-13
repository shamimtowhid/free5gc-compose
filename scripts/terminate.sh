#!/bin/bash

# terminating slice2
tmux select-window -t 2
tmux send-keys "exit" C-m
sleep 1
tmux send-keys "exit" C-m
sleep 1

tmux send-keys "exit" C-m
sleep 1
tmux send-keys "exit" C-m
sleep 1

tmux send-keys "exit" C-m
sleep 1
tmux send-keys "exit" C-m
sleep 1

tmux send-keys "exit" C-m
sleep 1
tmux send-keys "exit" C-m
sleep 1

# terminating slice1
tmux select-window -t 1
tmux send-keys "exit" C-m
sleep 1
tmux send-keys "exit" C-m
sleep 1

tmux send-keys "exit" C-m
sleep 1
tmux send-keys "exit" C-m
sleep 1

tmux send-keys "exit" C-m
sleep 1
tmux send-keys "exit" C-m
sleep 1

tmux send-keys "exit" C-m
sleep 1
tmux send-keys "exit" C-m
sleep 1

# terminating all containers
tmux send-keys -t 0 C-c

# terminating current panel
tmux send-keys "exit" C-m


# terminate slice2 tunnels
#tmux select-window -t 2
#tmux send-keys -t 0 C-c
#tmux send-keys -t 1 C-c
#tmux send-keys -t 2 C-c
#tmux send-keys -t 3 C-c


#tmux send-keys "exit" C-m
#sleep 1
#tmux send-keys "exit" C-m
#sleep 1

#tmux send-keys "exit" C-m
#sleep 1
#tmux send-keys "exit" C-m
#sleep 1

#tmux send-keys "exit" C-m
#sleep 1
#tmux send-keys "exit" C-m
#sleep 1

#tmux send-keys "exit" C-m
#sleep 1
#tmux send-keys "exit" C-m
#sleep 1


# terminate slice1 tunnels
#tmux select-window -t 1
#tmux send-keys -t 0 C-c
#tmux send-keys -t 1 C-c
#tmux send-keys -t 2 C-c
#tmux send-keys -t 3 C-c


#tmux send-keys "exit" C-m
#sleep 1
#tmux send-keys "exit" C-m
#tmux send-keys "exit" C-m
#sleep 1
#tmux send-keys "exit" C-m
#sleep 1

#tmux send-keys "exit" C-m
#sleep 1
#tmux send-keys "exit" C-m
#sleep 1

#tmux send-keys "exit" C-m
#sleep 1
#tmux send-keys "exit" C-m
#sleep 1

