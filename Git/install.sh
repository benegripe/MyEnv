#!/usr/bin

string="[core]"
file=".git/gitconfig"
echo $string >> $file

string="editor = vim"
echo $string >> $file

