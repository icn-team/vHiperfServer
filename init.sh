#!/bin/bash

/usr/bin/vpp -c /etc/vpp/startup.conf &>log.txt &
sleep 5

sysrepod -d -l 0 &
sleep 5

sysrepo-plugind -d -l 0 &
sleep 5

netopeer2-server -d -v 0 &
sleep 5

echo 'root:1' | chpasswd

# Enable hicn
/usr/bin/vppctl hicn control start

# Run the http proxy
PREFIX=${PREFIX:-"b001::/64"}

hiperf -S b001::/64