#!/bin/bash

echo tmux needs version 1.9
sudo add-apt-repository ppa:pi-rho/dev

sudo apt-get update
sudo apt-get install tmux vim-gtk curl wget tree git-flow

echo installing git submodules
git submodule init
git submodule update
