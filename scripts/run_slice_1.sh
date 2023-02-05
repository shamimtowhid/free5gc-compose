#!/bin/bash

# step 2: opening PDU sessions for ueransim
tmux new-window
tmux select-window -t 1
tmux rename-window pdu_ueransim
#tl=0, tr=1, br=2, bl=3
tmux split-window -h -p 50
tmux split-window -v -p 50
tmux select-pane -t 0
tmux split-window -v -p 50

#sleep 5 # seconds

tmux select-pane -t 0
tmux send-keys "sudo docker exec -it ueransim bash" C-m
tmux send-keys "./nr-ue -c ./config/ue1_cfg.yaml" C-m 

tmux select-pane -t 1
tmux send-keys "sudo docker exec -it ueransim bash" C-m
tmux send-keys "./nr-ue -c ./config/ue3_cfg.yaml" C-m

tmux select-pane -t 2
tmux send-keys "sudo docker exec -it ueransim bash" C-m
tmux send-keys "./nr-ue -c ./config/ue5_cfg.yaml" C-m

tmux select-pane -t 3
tmux send-keys "sudo docker exec -it ueransim bash" C-m
tmux send-keys "./nr-ue -c ./config/ue7_cfg.yaml" C-m
