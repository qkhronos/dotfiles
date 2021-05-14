#!/usr/bin/env bash

# keyboard
setxkbmap br abnt2 &
numlockx on &

# autostart services
test -f "$HOME/.fehbg" && exec "$HOME/.fehbg" &
test -f "/usr/bin/picom" && picom &
test -f "/usr/bin/pipewire" && pipewire &
test -f "/usr/bin/pipewire-media-session" && pipewire-media-session &
test -f "/usr/bin/pipewire-pulse" && pipewire-pulse &
test -f "/usr/bin/protonvpn" && sudo protonvpn connect --p2p &

# autostart applications
test -f "/usr/bin/firefox" && firefox &
test -f "/usr/bin/pavucontrol" && pavucontrol &
test -f "`which jetbrains-toolbox`" && jetbrains-toolbox &

# window manager
exec dbus-launch --exit-with-session qtile start
