#!/bin/bash

# terminating ueransim2 ping_test panels
tmux select-window -t 4
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

# terminating ueransim ping_test panels
tmux select-window -t 3
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

# terminate slice2 tunnels
tmux select-window -t 2
tmux send-keys -t 0 C-c
tmux send-keys -t 1 C-c
tmux send-keys -t 2 C-c
tmux send-keys -t 3 C-c


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


# terminate slice1 tunnels
tmux select-window -t 1
tmux send-keys -t 0 C-c
tmux send-keys -t 1 C-c
tmux send-keys -t 2 C-c
tmux send-keys -t 3 C-c


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
