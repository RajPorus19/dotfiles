#!/bin/bash 
du -a ~/.local/bin/* ~/.config/* ~/.bash* ~/.doom.d/* ~/.gitconfig ~/.xinitrc | awk '{print $2}' | dmenu -i -F -p  "Edit file :" | xargs -r st -e emacsclient -c -t
