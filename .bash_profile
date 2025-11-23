#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc
#[[ -f ~/.xprofile ]] && . ~/.xprofile

#export DISPLAY=":0"
#export HOME="$HOME"
export PATH="$PATH:$HOME/.scripts:$HOME/.config/environment.d"

#######
# XDG #
#######

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
export XDG_DOWNLOAD_DIR="$HOME/dl"
export XDG_DOCUMENTS_DIR="$HOME/dox"
export XDG_MUSIC_DIR="$HOME/music"
export XDG_PICTURES_DIR="$HOME/pix"
export XDG_VIDEOS_DIR="$HOME/vids"
export XDG_PUBLIC_DIR="$HOME/pub"
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

############
# CLIPMENU #
############

export CM_HISTLENGTH="10"
export CM_LAUNCHER="dmenu"

########################
# LOGIN-SHELL COMMANDS #
########################

#setxkbmap -model acer_laptop -option grp:alt_shift_toggle us,ara
xset r rate 200 55
