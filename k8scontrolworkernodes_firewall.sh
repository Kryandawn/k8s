#!/bin/bash
# allowing firewall port in ufw for contplane worker nodes

# list the ports
sudo ufw allow 10250
sudo ufw allow 30000:32767/tcp 

# Show the current UFW status  
echo "Current UFW status:"  
sudo ufw status