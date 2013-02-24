#! /bin/bash

# screen dir
cd ~/repos/sweetp-code/dashboard

# create first window and screen name
screen -d -m -S dashboard -t git
sleep 1;
# create other windows
screen -x dashboard -X screen -t ws
screen -x dashboard -X screen -t nodemon
screen -x dashboard -X screen -t cc
screen -x dashboard -X screen -t node
# execute some tasks
sleep 1;
screen -x dashboard -p git -X stuff "git status `echo -ne '\015'`"
screen -x dashboard -p nodemon -X stuff "nave use 8  `echo -ne '\015'`"
screen -x dashboard -p nodemon -X stuff "nodemon dashboard.coffee `echo -ne '\015'`"
screen -x dashboard -p cc -X stuff "nave use 8  `echo -ne '\015'`"
screen -x dashboard -p cc -X stuff "coffee -c -w js/src/dashboard `echo -ne '\015'`"
screen -x dashboard -p node -X stuff "nave use 8  `echo -ne '\015'`"
