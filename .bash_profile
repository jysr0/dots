#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc
#[[ -f ~/.xprofile ]] && . ~/.xprofile

#export DISPLAY=":0"
#export HOME="$HOME"
export PATH="$PATH:$(find ~/.scripts -type d | paste -sd ':' -):$HOME/.config/environment.d"
export TMPDIR="/tmp"

#######
# XDG #
#######

#XDG env variables:
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
export XDG_DESKTOP_DIR="$HOME/desk"
export XDG_DOWNLOAD_DIR="$HOME/downl"
export XDG_DOCUMENTS_DIR="$HOME/docs"
export XDG_MUSIC_DIR="$HOME/music"
export XDG_PICTURES_DIR="$HOME/pics"
export XDG_VIDEOS_DIR="$HOME/videos"
export XDG_PUBLIC_DIR="$HOME/public"
export XDG_TEMPLATES_DIR="$HOME/templates"
#export XDG_AUDIO_DIR="$HOME/audio"

#####################
# DEFAULT PROGRAMMS #
#####################

export EDITOR="vim"
#export PAGER="vim -R"
#export BROWSER="librewolf"
#export BROWSER="vivaldi"
export BROWSER="brave"
export TERMINAL="alacritty"
export TERM="alacritty"
export HISTSIZE=500 #shell history size

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

export CM_HISTLENGTH="10"
export CM_LAUNCHER="dmenu"

########
# GRIM #
########

export GRIM_DEFAULT_DIR="$XDG_PICTURES_DIR"

############
# STARSHIP #
############

export STARSHIP_CONFIG="~/.config/starship.toml"
#export STARSHIP_CACHE="~/.cache/starship/session_${STARSHIP_SESSION_KEY}.log"

#########################
# X11 START UP COMMANDS #
#########################

#dbus-update-activation-environment --systemd XDG_CURRENT_DESKTOP=dwm DISPLAY=:0
#systemctl --user import-environment XDG_CURRENT_DESKTOP DISPLAY
#dbus-update-activation-environment XDG_CURRENT_DESKTOP DISPLAY # used for filechoose when (down/up)load from browser

setxkbmap -model acer_laptop -option grp:alt_shift_toggle us,ara
xset r rate 200 55 2> /dev/null
sxhkd &
dunst &

[[ -f "$XDG_CACHE_HOME/bg.jpg" ]] || cp $XDG_PICTURES_DIR/backgrounds/0062.png $XDG_CACHE_HOME/bg.jpg
xwallpaper --stretch $XDG_CACHE_HOME/bg.jpg 2> /dev/null

picom -b
clipmenud &
xrdb ~/.Xresources
dwmblocks &
#exec dwm
#exec startx dwm #to start dwm
