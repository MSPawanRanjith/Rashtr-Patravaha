#!/bin/bash

echo $(pwd)
echo $HOME
echo setting git config...
git config --global user.name "rashtr" 
git config --global user.email "pawanranjith@gmail.com" 
echo $(git config --global --list)

# ssh-keygen -t rsa -b 4096 -C "pawanranjith@gmail.com" -N '' -f ~/.ssh/id_rsa
# echo trying cat to show id_rsa
# cat ~/.ssh/id_rsa

echo trying cat to show .ssh/id_rsa.pub.
cat ~/.ssh/id_rsa.pub

echo seeing content of known hosts
cat ~/.ssh/known_hosts

echo adding github as known known_hosts
ssh-keyscan -H github.com >> ~/.ssh/known_hosts

echo testing github connection
yes | ssh -T git@github.com
# echo trying normal to show id_rsa
# <~/.ssh/id_rsa


gatsby build --prefix-paths && gh-pages -d public -b gh-pages -r git@github.com:MSPawanRanjith/Rashtr-Patravaha.git