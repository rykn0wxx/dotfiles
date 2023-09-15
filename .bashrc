#!/usr/bin/env bash
#
case $- in
    *i*) ;;
      *) return;;
esac
# echo "$(sh -c 'ps -p $$ -o ppid=' | xargs ps -o comm= -p)"

source /root/.bash_profile
