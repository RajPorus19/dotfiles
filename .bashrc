#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# nnn 
export NNN_BMS='d:~/Documents;D:~/Downloads/'
export NNN_COLORS="2136"                           # use a different color for each context
export NNN_TRASH=1                                 # trash (needs trash-cli) instead of delete
# variables
export LESSHISTFILE=-
#gtk
export GTK_THEME=Nordic
export GTK2_RC_FILES=$HOME/.local/share/gtk-2.0/gtkrc
# move npm away from home
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
# gnu gpg path
export GNUPGHOME=$HOME/.config/gnupg
# systemd
alias goodbye="systemctl poweroff"
alias restart="systemctl reboot"
# ls
alias ls='ls --color=auto'
alias tree='tree -C'
# pacman
alias update='doas pacman -Syyu'
alias install='doas pacman -S'
alias search='pacman -Ss'
alias remove='doas pacman -Rs'
# youtube
alias ytmp3playlist='youtube-dl --extract-audio --yes-playlist  --audio-format mp3'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'
# prompt
PS1='[\u@\h \W]\$ '
# Default Apps
export EDITOR="nvim"
export MANPAGER="nvim -c 'set ft=man' -"
export READER="zathura"
export VISUAL="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export VIDEO="mpv"
export IMAGE="feh"
export TERM="xterm-256color"       
export OPENER="xdg-open"
export PAGER="less"
export WM="i3"
# Other XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
# clipmenu
export CM_HISTLENGTH=20
# rust neovide
export RUST_BACKTRACE=full
# manage dotfiles with git
alias config="/usr/bin/git --git-dir=$HOME/.config/dotfiles --work-tree=$HOME"
# display changed config files all the time
config status
# java
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export PATH=$PATH:$JAVA_HOME/bin
