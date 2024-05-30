#!/usr/bin/bash

cp $(dirname $0)/vimrc ~/.vimrc

mkdir -p ~/.vim/pack/nam/start
cd ~/.vim/pack/nam/start
rm -rfd *
git clone --depth=1 https://github.com/tpope/vim-fugitive.git
git clone --depth=1 https://github.com/covanam/vim-dim.git
git clone --depth=1 https://github.com/airblade/vim-gitgutter.git
git clone --depth=1 https://github.com/easymotion/vim-easymotion.git

