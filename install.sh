#!/usr/bin
#solved by FabioLima
#
#NameScript:	install2.sh
#
#Author and Maintaining: Fabio Lima
#
#-----------------------------------
#Description:
# Script to install package in Debian vim,git,ctags,wget,tmux
#
#-----------------------------------
#
#Example:
# ./install.sh
#
#-----------------------------------
#
#History
#
#v1.0 2017/01/22, FabioLima
#
#-----------------------------------
#
#License: GPL
#
	
#FlagDebug
set -u
set -e
set -o pipefail
	
Debug(){
	[ $1 -le $DEBUG ] && echo "--- DEBUG $*" 
}

function installTools(){
	declare -a tools=('vim' 'git' 'ctags' 'tmux' 'wget')
	lenght=`expr ${#tools[@]} - 1`
	for i in `seq 0 $lenght`;
	do
		echo "install ${tools[${i}]} Y/n ?"
		read answer
		if [ "$answer" = "Y" ] || [ "$answer" = "y" ];
		then
			install=$pac${tools[${i}]}
			$install
		fi
	done
}

function getDistro(){
	dist_os=$(lsb_release -si)
	if [ "$dist_os" = "Debian" ];  then
		pac="sudo apt-get install -y "
	fi
}

pac=''
tools=''
getDistro
installTools
