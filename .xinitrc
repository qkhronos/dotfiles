#!/bin/sh

# keyboard
setxkbmap br abnt2 &
numlockx on &

# autostart
test -f "$HOME/.fehbg" && exec "$HOME/.fehbg" &
test -f "/usr/bin/protonvpn" && sudo protonvpn connect --p2p &

# window manager
qtile start
