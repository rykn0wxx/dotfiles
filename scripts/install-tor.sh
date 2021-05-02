#!/usr/bin/env bash

cat > /etc/apt/sources.list.d/tor.list << EOF
deb [arch=amd64] http://deb.torproject.org/torproject.org/ buster main
EOF

wget -O- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | sudo apt-key add -

sudo apt update

sudo apt install tor deb.torproject.org-keyring

c_reset="\e[0m";
c_red="\e[1;31m";

echo -e $c_red tor has been setup $c_reset;
