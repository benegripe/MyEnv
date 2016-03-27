#!/usr/bin

#this file must be in home directory
file=".tmux.conf"
echo "set -g prefix C-a" >> $file
echo "set -g base-index 1" >> $file
