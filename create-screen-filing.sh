#! /bin/bash

# screen dir
cd ~/repos/filing.coffee

# create first window and screen name
screen -d -m -S filing -t git
sleep 1;
# create other windows
screen -x filing -X screen -t ws
screen -x filing -X screen -t nodemon
screen -x filing -X screen -t node
screen -x filing -X screen -t mongo
# execute some tasks
sleep 1;
screen -x filing -p git -X stuff "git status `echo -ne '\015'`"
screen -x filing -p nodemon -X stuff "export SHELL=/bin/bash  `echo -ne '\015'`"
screen -x filing -p nodemon -X stuff "nave use 6  `echo -ne '\015'`"
screen -x filing -p node -X stuff "export SHELL=/bin/bash  `echo -ne '\015'`"
screen -x filing -p node -X stuff "nave use 6  `echo -ne '\015'`"
