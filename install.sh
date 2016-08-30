#!/usr/bin/

# Install package in ubuntu or Arch Linux
dist_os=$(lsb_release -si)
pac=''
if [ "$dist_os" = "Ubuntu" ];  then
	tools=('vim' 'git' 'ctags' 'tmux','wget')
	pac="apt-get install"
	for i in "${tools[@]}"
	do
		sudo $pac $i
	done
else
	echo "not support to this Operating System"
fi
