#! /bin/bash

iptables -P INPUT ACCEPT

iptables -P OUTPUT ACCEPT

iptables -F

# iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# iptables -A INPUT -p udp -m multiport –dport 2302:2306 -j ACCEPT

# iptables -A INPUT -p tcp -m multiport –dport 2302:2306 -j ACCEPT

# iptables -A OUTPUT -p udp -m multiport –dport 2302:2305 -j ACCEPT

# iptables -A INPUT -i lo -j ACCEPT

# iptables -A INPUT -j DROP

# apt-get install iptables-persistent -y

# invoke-rc.d iptables-persistent save