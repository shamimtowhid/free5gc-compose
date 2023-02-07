At first start tmux session by typing "tmux" in the terminal. Some useful tmux commands are written at the end of this file.

To run all the containers of the testbed, run the following command from the current directory.

./run_containers.sh

This command will split the current terminal into two. In one terminal, all the containers will start to run. 
Wait until all the containers are up and running. 

Once all the containers are running, then the following command will start PDU sessions for all 4 UEs in slice 1.
The following command will start another tmux window named "pdu_ueransim". That new window will be splitted into four panels. 
Four PDU session for the four UEs will be opened in each of the created panels. 

./run_slice_1.sh

Similar to run_slice_1.sh file, run_slice_2.sh will create another new tmux window named "pdu_ueransim2". 
This new window will be splitted into four panels and 4 PDU sessions will be opened for the 4 UEs of slice 2. 

./run_slice_2.sh

Once all the PSU sessions are created successfully, we can use the 4 UEs to generate data. There is another script (test_ping.sh) that will open 2 new tmux windows and 8 panels in these two windows for the 8 UEs. This script will send 10 ping packets using the PDU tunnels to test whether the testbed can send data using the UPFs. Once the ping test is finished, we can use the same tmux panels to generate data using our headless script or some attack tools from Kali linux. 

./test_ping.sh

Once all the data generation is finished, the terminate script can be used to terminate all the windows and panels.

./terminate.sh (this should be used from window 0 and panel 1)

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
