#!/usr/bin/env bash
mpc clear
mpc repeat on
music="$(mpc listall | dmenu -l 20 -F -i -p "Play that music : ")"
mpc add "$music"
mpc play
/home/porus/.local/bin/notif-mpc.sh
