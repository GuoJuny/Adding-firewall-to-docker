# Adding-firewall-to-docker
Install iptables-based firewall in iperf3 docker container.

The function of the iptable-based firewall set up here is to allow incoming TCP packets and icmp packets with destination port 5201 to pass, but not any other packets. Port 5201 is the port on which the iperf-server's docker container will be transporting traffic.
