#! /bin/bash

if [ "$1" = '-h' ]; then 
        echo "firewall.sh is a quick safety precaution that will close out all incoming/outgoing 			connections."
        echo "It will allow communication with ip addresses passed as arguments to the script."
        echo "Multiple ip adresses may be passed if they are separated by a space"
        echo
        echo "Usage:   firewall.sh"
        echo "         firewall.sh [ip_address]"
        echo "         firewall.sh [ip_address] [ip_address] [ip_address] ..."
        echo "         firewall.sh -h"
else
        iptables -F
        iptables -A INPUT -j DROP
        iptables -A OUTPUT -j DROP
        echo "Firewall adjusted. No communiaction allowed..." 


        for ip in $@; do 
                iptables -I INPUT -s "$ip" -j ACCEPT
                iptables -I OUTPUT -s "$ip" -j ACCEPT
                echo "Firewall adjusted. Communication allowed with $ip"
        done

        echo
        echo "Updated firewall:"
        iptables -L
fi

