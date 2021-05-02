#!/usr/bin/env bash

curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -
sleep 1s
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
sleep 1s

cat > /etc/apt/sources.list.d/nodesource.list << EOF
deb [arch=amd64] https://deb.nodesource.com/node_14.x/ buster main
EOF

cat > /etc/apt/sources.list.d/yarn.list << EOF
deb [arch=amd64] https://dl.yarnpkg.com/debian/ stable main
EOF

sudo apt update
sleep 0.5s
sudo apt install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev -y
sleep 1s
sudo apt install nodejs yarn -y
