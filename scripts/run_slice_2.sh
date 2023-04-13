#!/bin/bash

# step 3: opening panels for each UEs of slice 2 and testing with ping command
tmux new-window
tmux select-window -t 2
tmux rename-window slice2
#tl=0, tr=1, br=2, bl=3
tmux split-window -h -p 50
tmux split-window -v -p 50
tmux select-pane -t 0
tmux split-window -v -p 50

tmux select-pane -t 0
tmux send-keys "sudo docker exec -it ue2 bash" C-m
tmux send-keys "ping -c 10 -I uesimtun0 google.com" C-m
#tmux send-keys "./nr-ue -c ./config/ue2_cfg.yaml" C-m

tmux select-pane -t 1
tmux send-keys "sudo docker exec -it ue4 bash" C-m
tmux send-keys "ping -c 10 -I uesimtun0 google.com" C-m
#tmux send-keys "./nr-ue -c ./config/ue4_cfg.yaml" C-m

tmux select-pane -t 2
tmux send-keys "sudo docker exec -it ue6 bash" C-m
tmux send-keys "ping -c 10 -I uesimtun0 google.com" C-m
#tmux send-keys "./nr-ue -c ./config/ue6_cfg.yaml" C-m

tmux select-pane -t 3
tmux send-keys "sudo docker exec -it ue8 bash" C-m
tmux send-keys "ping -c 10 -I uesimtun0 google.com" C-m
#tmux send-keys "./nr-ue -c ./config/ue8_cfg.yaml" C-m
