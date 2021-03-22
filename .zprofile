#!/bin/zsh

# variables
source $HOME/.zvariables

if [ -z "$DISPLAY" -a "$(tty)" = "/dev/tty1" ]; then
	startx
fi
