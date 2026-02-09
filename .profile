#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.xprofile ]] && . ~/.xprofile



#export XAPPLRESDIR="$(find ~/.config/profile/ -type d | paste -sd ':' -)"



##############################
# USER ENVIRONMENT VARIABLES #
##############################

#export TMPDIR="/tmp"
#export DISPLAY=arch:0.0 #see: man X

#export PATH="$PATH:$HOME/.config/environment.d:$(find ~/.local/bin/ -type d | paste -sd ':' -)"
export PATH="$PATH:$(find ~/.local/bin/ -type d | paste -sd ':' -)"

#export XDG_CURRENT_DESKTOP="dwm"
#export XDG_SESSION_TYPE="x11"
#export XDG_SESSION_TYPE="wayland"
#export XDG_RUNTIME_DIR="$HOME/.runtime.dir"
#export XDG_PUBLICSHARE_DIR="$HOME/"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_DIRS="/etc/xdg"
export XDG_DATA_DIRS="/usr/share:/usr/local/share"
export XDG_DESKTOP_DIR="$HOME/desktop"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_DOCUMENTS_DIR="$HOME/docs"
export XDG_PICTURES_DIR="$HOME/pics"
export XDG_VIDEOS_DIR="$HOME/videos"
export XDG_PUBLIC_DIR="$HOME/public"
export XDG_TEMPLATES_DIR="$HOME/templates"
export XDG_MUSIC_DIR="$HOME/audio"
export XDG_AUDIO_DIR="$HOME/audio"



###########################################
# DEFAULT PROGRAMMS ENVIRONMENT VARIABLES #
###########################################

export EDITOR="vim"
#export PAGER="vim -R"

#export BROWSER="librewolf"
#export BROWSER="vivaldi"
#export BROWSER="brave"
#export BROWSER="qutebrowser"
#export BROWSER="vivaldi"
#export BROWSER="vivaldi-stable"
#export BROWSER="firefox"
export BROWSER="chromium"

#export TERMINAL="alacritty"
#export TERM="alacritty"
export TERMINAL="st"
export TERM="st"



######
# LF #
######

export lf="/usr/bin/lf"
export lf_mode="normal"
export OPERNER="xdg-open"
#export UEBERZUGPP_TMPDIR="${TMPDIR}/ueberzugpp"



############
# CLIPMENU #
############

export CM_HISTLENGTH="1000"
export CM_LAUNCHER="dmenu"



########
# GRIM #
########

export GRIM_DEFAULT_DIR="$XDG_PICTURES_DIR"



############
# STARSHIP #
############

export STARSHIP_CONFIG=~/.config/starship.toml
export STARSHIP_CACHE=~/.cache/starship/session_${STARSHIP_SESSION_KEY}.log
export STARSHIP_SHELL=/usr/bin/sh



#########
# OTHER #
#########

export HISTSIZE=500 #shell history size



#########################
# X11 START UP COMMANDS #
#########################

#dbus-update-activation-environment XDG_CURRENT_DESKTOP=dwm DISPLAY=arch:0.0 #used for filechoose when (down/up)load from browser
#dbus-update-activation-environment --systemd XDG_CURRENT_DESKTOP=dwm DISPLAY=arch:0.0
#systemctl --user import-environment XDG_CURRENT_DESKTOP DISPLAY

#systemctl --user start obex.service # for bluetooth file transfer.
#systemctl --user start xdg-desktop-portal.service
#systemctl --user start xdg-desktop-portal-lxqt.service
#systemctl --user start xdg-desktop-portal-gtk.service
#systemctl --user start clipmenud.service
#systemctl enable ly@tty2.service #ly DM

[[ -f "$XDG_CACHE_HOME/bg.jpg" ]] || cp $XDG_PICTURES_DIR/backgrounds/0062.png $XDG_CACHE_HOME/bg.jpg
xwallpaper --stretch $XDG_CACHE_HOME/bg.jpg 2> /dev/null

#xrandr --dpi 110 #for dwmblocks-async size

#setxkbmap -model acer_laptop -option grp:alt_space_toggle us,ara
xset r rate 189 58
clipmenud &

sxhkd &
dunst &

#systemctl --user start xscreensaver.service
xscreensaver &

picom -b #use picom rather than xcompmgr.
#xcompmgr -C -f -o 0.90 -I 0.035 -O 0.059 & #fade-in/out number: the lower the slower.
#xcompmgr &
#transset-df -a 0.75 &

xrdb ~/.Xresources

dwmblocks &
#exec dwm
#exec startx dwm -- X arch:0.0
#exec startx dwm
