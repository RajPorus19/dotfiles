#!/bin/sh
chosenFile=$(du -a ~/Projects/* | awk '{print $2}' | dmenu -i -F -p "Edit file :")
declare -a options=(
  "emacs"
  "nvim"
  "file"
)
choice=$(printf '%s\n' "${options[@]}" | dmenu -i -F -p 'Choose your editor :' "${@}")
if [ "$choice" == "emacs" ]; then
    emacsclient -nc $chosenFile &
elif [ "$choice" == "nvim" ]; then
    st -e nvim $chosenFile &
elif [ "$choice" == "file" ]; then
    st -e nnn $chosenFile &
else
    $choice $chosenFile &
fi
