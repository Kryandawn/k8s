#!/bin/bash
# allowing firewall port in ufw for contplane nodes

# List of ports to allow  
PORTS=(6443 10250 10251 10252)  

# Loop through the ports and allow each one  
for PORT in "${PORTS[@]}"; do  
    echo "Allowing port $PORT..."  
    sudo ufw allow $PORT  
done  
sudo ufw allow 2379:2380/tcp 

# Show the current UFW status  
echo "Current UFW status:"  
sudo ufw status