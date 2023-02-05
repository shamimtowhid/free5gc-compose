#!/bin/bash

# step 1: running docker containers
cd /home/sharedrive/testbed/free5gc-compose/
#tmux
tmux send-keys "sudo docker-compose up" C-m
tmux rename-window compose
tmux split-window -v -p 50
tmux select-pane 1
#cd /home/sharedrive/testbed/free5gc-compose/scripts/
