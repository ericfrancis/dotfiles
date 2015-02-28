#!/bin/bash

sudo apt-get install vim-gtk curl wget tree git-flow

# tmux needs version 1.9
sudo add-apt-repository ppa:pi-rho/dev
sudo apt-get update
sudo apt-get install tmux 


mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle && \ 
	git clone git://github.com/tpope/vim-sensible.git && \
	git clone https://github.com/christoomey/vim-tmux-navigator.git

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
