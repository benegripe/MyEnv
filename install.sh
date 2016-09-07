#!/usr/bin/

# Script to install package in Ubuntu and Debian vim,git,ctags,wget,tmux

pac=''
tools=('vim' 'git' 'ctags' 'tmux','wget')
dist_os=$(lsb_release -si)
if [ "$dist_os" = "Ubuntu" ];  then
	pac="sudo apt-get install"
elif [ "$dist_os" = "Debian" ];  then
	pac="apt-get install"
fi
for i in "${tools[@]}"
do
	$pac $i
done
