#!/usr/bin/env bash

c_rst="\e[0m";
c_org="\e[1;33m";
c_blu="\e[1;34m";
c_red="\e[1;91m";
c_vio="\e[1;35m";
# echo -e $c_org Codename: $c_blu rykn0wxx $c_red;
#/usr/games/fortune | /usr/games/cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1) eval($c_vio [CODENAME: rykn0wxx])
echo -e $c_vio CODENAME: rykn0wxx $c_red | /usr/games/cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1)
echo -e $c_rst;
