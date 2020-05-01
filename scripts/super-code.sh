#!/usr/bin/env bash

if [ $1 == "" ]; then
    /usr/bin/code noname.txt --user-data-dir /home/rykn0wxx
else
    /usr/bin/code $1 --user-data-dir /home/rykn0wxx/
fi
