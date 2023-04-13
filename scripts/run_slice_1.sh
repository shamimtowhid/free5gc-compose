#!/bin/bash

# step 2: opening panels for each UEs of slice 1 and testing with ping command
tmux new-window
tmux select-window -t 1
tmux rename-window slice1
#tl=0, tr=1, br=2, bl=3
tmux split-window -h -p 50
tmux split-window -v -p 50
tmux select-pane -t 0
tmux split-window -v -p 50

#sleep 5 # seconds

tmux select-pane -t 0
tmux send-keys "sudo docker exec -it ue1 bash" C-m
tmux send-keys "ping -c 10 -I uesimtun0 google.com" C-m
#tmux send-keys "./nr-ue -c ./config/ue1_cfg.yaml" C-m 

tmux select-pane -t 1
tmux send-keys "sudo docker exec -it ue3 bash" C-m
tmux send-keys "ping -c 10 -I uesimtun0 google.com" C-m
#tmux send-keys "./nr-ue -c ./config/ue3_cfg.yaml" C-m

tmux select-pane -t 2
tmux send-keys "sudo docker exec -it ue5 bash" C-m
tmux send-keys "ping -c 10 -I uesimtun0 google.com" C-m
#tmux send-keys "./nr-ue -c ./config/ue5_cfg.yaml" C-m

tmux select-pane -t 3
tmux send-keys "sudo docker exec -it ue7 bash" C-m
tmux send-keys "ping -c 10 -I uesimtun0 google.com" C-m
#tmux send-keys "./nr-ue -c ./config/ue7_cfg.yaml" C-m
