#!/usr/bin/env bash

curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -
sleep 1
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
sleep 1

echo "##" | sudo tee /etc/apt/sources.list.d/nodesource.list

cat << EOF > /etc/apt/sources.list.d/nodesource.list
##
##
deb https://deb.nodesource.com/node_12.x buster main
deb-src https://deb.nodesource.com/node_12.x buster main
##
EOF

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update
sudo apt install nodejs yarn -y
