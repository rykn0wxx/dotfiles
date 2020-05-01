#!/usr/bin/env bash

cat << EOF > /etc/resolv.conf
##
##
nameserver 1.0.0.1
nameserver 1.1.1.1
nameserver 192.168.254.254
##
EOF

c_reset="\e[0m";
c_red="\e[1;31m";

echo -e $c_red resolv.conf updated $c_reset;
