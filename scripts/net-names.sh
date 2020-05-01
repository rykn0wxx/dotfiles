#!/usr/bin/env bash

cat << EOF > /etc/udev/rules.d/70-persistent-net.rules
##
SUBSYSTEM=="net", ACTION=="add", ATTR{address}=="c0:e4:34:46:9a:45", ATTR{dev_id}=="0x0", ATTR{type}=="1", NAME="wlan0"

SUBSYSTEM=="net", ACTION=="add", ATTR{address}=="98:3f:9f:18:24:0c", ATTR{dev_id}=="0x0", ATTR{type}=="1", NAME="wifi0"
SUBSYSTEM=="net", ACTION=="add", ATTR{address}=="e8:4e:06:72:c0:c6", ATTR{dev_id}=="0x0", ATTR{type}=="1", NAME="wifi1"
##
EOF

ln -s /dev/null /etc/systemd/network/99-default.link

c_reset="\e[0m";
c_red="\e[1;31m";

echo -e $c_red network interface names script run $c_reset;
