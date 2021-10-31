#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# nnn 
export NNN_BMS='d:~/Documents;D:~/Downloads/'
export NNN_FIFO=/tmp/nnn.fifo
export NNN_COLORS="2136"                           # use a different color for each context
export NNN_TRASH=1                                 # trash (needs trash-cli) instead of delete
export NNN_PLUG='o:cd;p:preview'
export NNN_FCOLORS='c1e2272e006033f7c6d6abc4'
nnn_cd()                                                                                                   
{
    if ! [ -z "$NNN_PIPE" ]; then
        printf "%s\0" "0c${PWD}" > "${NNN_PIPE}" !&
    fi  
}

trap nnn_cd EXIT
# variables
export LESSHISTFILE=-
#gtk
export GTK_THEME=Dracula
export GTK2_RC_FILES=/usr/share/themes/Dracula/gtk-2.0/gtkrc
# move npm away from home
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
# gnu gpg path
export GNUPGHOME=$HOME/.config/gnupg
# docker
alias docker="doas docker"
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
alias purge='doas pacman -Rcns'
# youtube
alias ytmp3playlist='youtube-dl --extract-audio --yes-playlist  --audio-format mp3 --embed-thumbnail --add-metadata'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3 --embed-thumbnail --add-metadata'
# webcam
alias webcam='mpv av://v4l2:/dev/video0 --profile=low-latency --untimed'
# prompt
PS1='[\u@\h \W]\$ '
# Default Apps
#export EDITOR="nvim"
#export MANPAGER="nvim -c 'set ft=man' -"
export READER="zathura"
#export VISUAL="nvim"
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
# local scripts
export PATH=$PATH:$HOME/.local/bin/
# cargo bin
export PATH=$PATH:$HOME/.cargo/bin/
# pass
export PASSWORD_STORE_DIR="$HOME/.config/pass"
# ytfzf
export YTFZF_EXTMENU='dmenu -F -p "Search on youtube:" -i -l 30'
cat /usr/share/pokeshell/$(($RANDOM % 151 + 1)).pokemon
# ls icons exa
alias ls='exa --icons'
# pywal
#(cat ~/.cache/wal/sequences &)
#starship
eval "$(starship init bash)"
