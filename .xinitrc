#!/bin/sh

# autostart
test -f "$HOME/.fehbg" && exec "$HOME/.fehbg" &

# window manager
qtile start
