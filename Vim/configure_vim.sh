#!/bin/sh
#
#solved by FabioLima
#
#NameScript:	configure_vim.sh
#
#Author and Maintaining: Fabio Lima
#
#-----------------------------------
#Description:
#
#This script install and configure pathogen,nerdtree,python-mode,vim sensitive
#The script must be in home directory for install in the right place
#
#-----------------------------------
#
#Example:
# $ ./configure_vim.sh
#
#-----------------------------------
#
#History:
#
#v1.0 2016/09/07, FabioLima
#
#-----------------------------------
#
#License: GPL
#

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

