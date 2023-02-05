#!/bin/bash

# step 4: ping to google.com by all UEs of ueransim
tmux new-window
tmux select-window -t 3
tmux rename-window ueransim
#tl=0, tr=1, br=2, bl=3
tmux split-window -h -p 50
tmux split-window -v -p 50
tmux select-pane -t 0
tmux split-window -v -p 50

tmux select-pane -t 0
tmux send-keys "sudo docker exec -it ueransim bash" C-m
tmux send-keys "ping -c 10 -I uesimtun0 google.com" C-m

tmux select-pane -t 1
tmux send-keys "sudo docker exec -it ueransim bash" C-m
tmux send-keys "ping -c 10 -I uesimtun1 google.com" C-m

tmux select-pane -t 2
tmux send-keys "sudo docker exec -it ueransim bash" C-m
tmux send-keys "ping -c 10 -I uesimtun2 google.com" C-m

tmux select-pane -t 3
tmux send-keys "sudo docker exec -it ueransim bash" C-m
tmux send-keys "ping -c 10 -I uesimtun3 google.com" C-m


# step 5: ping to google.com by all UEs of ueransim2
tmux new-window
tmux select-window -t 4
tmux rename-window ueransim2
#tl=0, tr=1, br=2, bl=3
tmux split-window -h -p 50
tmux split-window -v -p 50
tmux select-pane -t 0
tmux split-window -v -p 50

tmux select-pane -t 0
tmux send-keys "sudo docker exec -it ueransim2 bash" C-m
tmux send-keys "ping -c 10 -I uesimtun0 google.com" C-m

tmux select-pane -t 1
tmux send-keys "sudo docker exec -it ueransim2 bash" C-m
tmux send-keys "ping -c 10 -I uesimtun1 google.com" C-m

tmux select-pane -t 2
tmux send-keys "sudo docker exec -it ueransim2 bash" C-m
tmux send-keys "ping -c 10 -I uesimtun2 google.com" C-m

tmux select-pane -t 3
tmux send-keys "sudo docker exec -it ueransim2 bash" C-m
tmux send-keys "ping -c 10 -I uesimtun3 google.com" C-m
