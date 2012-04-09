#! /bin/bash

# screen dir
cd ~/repos/maarbeit/code/main

# create first window and screen name
screen -d -m -S myscreenname -t git
# create other windows
screen -x myscreenname -X screen -t ws
screen -x myscreenname -X screen -t server
screen -x myscreenname -X screen -t test
