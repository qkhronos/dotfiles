#!/bin/sh

# keyboard
setxkbmap br abnt2 &
numlockx on &

# autostart
test -f "$HOME/.fehbg" && exec "$HOME/.fehbg" &
test -f "/usr/bin/picom" && picom &
test -f "/usr/bin/pipewire" && pipewire &
test -f "/usr/bin/pipewire-media-session" && pipewire-media-session &
test -f "/usr/bin/pipewire-pulse" && pipewire-pulse &
test -f "/usr/bin/protonvpn" && sudo protonvpn connect --p2p &

# window manager
exec dbus-launch --exit-with-session qtile start
