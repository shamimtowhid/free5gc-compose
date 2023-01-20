#!/bin/bash
#
# Configure iptables in UPF
#
# POSTROUTING: Modifying packets as they are leaving

iptables -t nat -A POSTROUTING -o eth0  -j MASQUERADE
iptables -I FORWARD 1 -j ACCEPT

