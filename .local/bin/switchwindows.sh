wmctrl -l -x | dmenu -i -F -p "Focus on :" | awk '{print $1}' | xargs -r wmctrl -i -a
