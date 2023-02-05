#!/bin/bash

# step 3: opening PDU sessions for ueransim2
tmux new-window
tmux select-window -t 2
tmux rename-window pdu_ueransim2
#tl=0, tr=1, br=2, bl=3
tmux split-window -h -p 50
tmux split-window -v -p 50
tmux select-pane -t 0
tmux split-window -v -p 50

tmux select-pane -t 0
tmux send-keys "sudo docker exec -it ueransim2 bash" C-m
tmux send-keys "./nr-ue -c ./config/ue2_cfg.yaml" C-m

tmux select-pane -t 1
tmux send-keys "sudo docker exec -it ueransim2 bash" C-m
tmux send-keys "./nr-ue -c ./config/ue4_cfg.yaml" C-m

tmux select-pane -t 2
tmux send-keys "sudo docker exec -it ueransim2 bash" C-m
tmux send-keys "./nr-ue -c ./config/ue6_cfg.yaml" C-m

tmux select-pane -t 3
tmux send-keys "sudo docker exec -it ueransim2 bash" C-m
tmux send-keys "./nr-ue -c ./config/ue8_cfg.yaml" C-m
