#!/bin/sh

#this file need stay in home directory

dir=".vim"
if [ -d $dir ]; then
	#install PATHOGEN
	folder=".vim/autoload .vim/bundle"
	mkdir -p $folder

	pathogen="curl -LSso .vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim"
	$pathogen

	file=".vim/vimrc"
	string="filetype off"
	echo $string >> $file

	string="call pathogen#infect()"
	echo $string >> $file

	string="call pathogen#helptags()"
	echo $string >> $file

	string="filetype plugin indent on"
	echo $string >> $file

	string="syntax on"
	echo $string >> $file

	path=".vim/bundle"
	cd $path

	git="git clone git://github.com/tpope/vim-sensible.git"
	$git

	git="git clone https://github.com/klen/python-mode.git"
	$git

else
	echo "Need install vim"
fi

