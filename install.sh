#!/usr/bin/

# Install package in ubuntu or Arch Linux
dist_os=$(lsb_release -si)
pac=''
if [ "$dist_os" = "Ubuntu" ];  then
	sudo -v
	pac="apt-get install"
	$pac "vim"
	$pac "git"
	$pac "ctags"
	$pac "tmux"
else
	echo "not suppor to this Operating System"
fi
