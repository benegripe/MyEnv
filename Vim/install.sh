#!/bin/sh

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/
echo "execute pathogen#infect()
syntax on
filetype plugin indent on" >> .vimrc

mkdir ~/.vim/bundle
cd ~/.vim/bundle && \
git clone git://github.com/tpope/vim-sensible.git
