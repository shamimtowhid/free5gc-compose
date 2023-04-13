At first start tmux session by typing "tmux" in the terminal. Some useful tmux commands are written at the end of this file.

To run all the containers of the testbed, run the following command from the current directory.

./run_containers.sh

This command will split the current terminal into two. In one terminal, all the containers will start to run. 
Wait until all the containers are up and running. All the PDU session for all the UEs will be established at this step. 

Once all the containers are running, then the following command will open 4 panels for all 4 UEs in slice 1.
The following command will start another tmux window named "slice1". That new window will be splitted into four panels. 
A ping test to google.com will be performed using "uesimtun0" interface from each UEs. 

./run_slice_1.sh

Similar to run_slice_1.sh file, run_slice_2.sh will create another new tmux window named "slice2".
This new window will be splitted into four panels and 4 panels will be opened for the 4 UEs of slice 2.

./run_slice_2.sh

Once the ping test are performed successfully, we can use the 4 UEs to generate data. 

Once all the data generation is finished, the terminate script can be used to terminate all the windows and panels.

./terminate.sh (this should be used from window 0 and panel 1)

After running terminate.sh script, please run the following command in any window to fully shut down the testbed. 

sudo docker-compose down

The above command will remove all the created containers along with the docker bridge network.

To capture the traffic from UPF functions, we need to open another tmux window and split it into two panels for the two UPFs. Then open bash program for the upf and upf2 containers. Then use wireshark(headless) or tcpdump command to capture traffic from appropriate interfaces. 

Some useful tmux commands.

Ctrl+b % = split the current window horizontally
Ctrl+b " = split the current window vertically
Ctrl+b (arrow keys) = traverse between different panels in the current window
Ctrl+b (window number) = go to a specific window. The current window is marked with * sign in the green bar (below) of tmux window. 
Ctrl+b c = create new window
Ctrl+d = exit the current panel/window


To open UPF container (upf and upf2 are the names of the containers):
sudo docker exec -it upf bash
sudo docker exec -it upf2 bash
