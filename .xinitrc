#!/usr/bin/env bash

# keyboard
setxkbmap br abnt2 &
numlockx on &

# autostart services
test -f "$HOME/.fehbg" && exec "$HOME/.fehbg" &
test -f "`which pcmanfm`" && pcmanfm --daemon-mode &
test -f "`which picom`" && picom &
test -f "`which pipewire-media-session`" && pipewire-media-session &
test -f "`which pipewire-pulse`" && pipewire-pulse &
test -f "`which pipewire`" && pipewire &
test -f "`which protonvpn`" && sudo protonvpn connect --p2p &

# autostart applications
test -f "`which firefox`" && firefox &
test -f "`which jetbrains-toolbox`" && jetbrains-toolbox &
test -f "`which pavucontrol`" && pavucontrol &

# window manager
exec dbus-launch --exit-with-session qtile start
