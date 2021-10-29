sxhkd & # deamon for keybindings
#exec /home/porus/.local/bin/screen.sh &
exec /home/porus/.screenlayout/screen.sh &
picom --experimental-backends &
xset r rate 300 75 & # faster keyboard
setxkbmap fr -option "ctrl:nocaps" -option "shift:both_capslock" & # french keyboard layout + ctrl swap
emacs --daemon &
# redshift &
systemctl --user import-environment DISPLAY &
feh --bg-fill --no-fehbg ~/Pictures/Wallpapers/wallpaper.jpg &
clipmenud & 
pcmanfm -d &
exec /home/porus/.local/bin/greetings.sh &
conky &
mpd &
play-with-mpv &
