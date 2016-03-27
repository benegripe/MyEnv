#!/usr/bin

#this file must be in home directory
file=".tmux.conf"
#prefix to ctr + a
echo "set -g prefix C-a" >> $file
#star index window begin 1, ctr + a + number
echo "set -g base-index 1" >> $file
#index pane start with 1, ctr + a + t + number
echo "setw -g pane-base index 1" >> $file
#reload configuration file, ctrl + r
echo "bind r source-file ~/.tmux.conf \; display \"Reloaded\"" >> $file
#send command ctr + a to other application
echo "bind C-a send-prefix" >> $file
#split pane in vertical
echo "bind | split-window -h" >> $file
#split pane in horizontal
echo "bind | split-window -v" >> $file

