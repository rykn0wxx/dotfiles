#!/usr/bin/env bash

function create-swapfile() {
  fallocate -l 1G /swapfile
  dd if=/dev/zero of=/swapfile bs=1024 count=1048576
  chmod 600 /swapfile
  mkswap /swapfile
  swapon /swapfile
  echo "/swapfile swap  swap  defaults  0 0" | sudo tee -a /etc/fstab
}

create-swapfile
