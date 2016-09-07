#!/bin/sh

#this file need stay in home directory

#install PATHOGEN
folder=".vim/autoload .vim/bundle"
mkdir -p $folder

pathogen="curl -LSso .vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim"
$pathogen

path=".vim/bundle"
cd $path

git="git clone git://github.com/tpope/vim-sensible.git"
$git

git="git clone https://github.com/klen/python-mode.git"
$git

git="git clone https://github.com/scrooloose/nerdtree.git"
$git

