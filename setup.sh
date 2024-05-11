#!/usr/bin/bash

cp $(dirname $0)/vimrc ~/.vimrc

mkdir -p ~/.vim/pack/nam/start
cd ~/.vim/pack/nam/start
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/morhetz/gruvbox.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/preservim/nerdtree.git
git clone https://github.com/vim-airline/vim-airline.git

