#!/bin/sh

# keyboard
setxkbmap br abnt2 &
numlockx on &

# autostart
test -f "$HOME/.fehbg" && exec "$HOME/.fehbg" &

# window manager
qtile start
