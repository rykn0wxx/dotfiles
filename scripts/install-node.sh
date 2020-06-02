#!/usr/bin/env bash

curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -
sleep 1

echo "##" | sudo tee /etc/apt/sources.list.d/nodesource.list

cat << EOF > /etc/apt/sources.list.d/nodesource.list
##
##
deb https://deb.nodesource.com/node_12.x buster main
deb-src https://deb.nodesource.com/node_12.x buster main
##
EOF

sudo apt update
sudo apt install nodejs -y
