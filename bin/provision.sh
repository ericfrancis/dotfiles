#!/bin/bash
sudo apt-get install vim-gtk curl wget tree git-flow

# tmux needs version 1.9
sudo add-apt-repository ppa:pi-rho/dev
sudo apt-get update
sudo apt-get install tmux 

# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
