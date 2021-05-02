#!/usr/bin/env bash

cat > /etc/resolv.conf << EOF
nameserver 1.0.0.1
nameserver 1.1.1.1
EOF

c_reset="\e[0m";
c_red="\e[1;31m";

echo -e $c_red resolv.conf updated $c_reset;
