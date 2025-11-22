#
# ~/.xinitrc
#
#copy runnable .xinitrc content to .bash_profile so ly display manager can start them

if [ -d "$xinitdir"/xinitrc.d ] ; then
	for f in "$xinitdir/xinitrc.d"/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

[ -f ~/.xprofile ] && . ~/.xprofile

############
# COMMANDS #
############

#dbus-update-activation-environment --systemd XDG_CURRENT_DESKTOP=dwm DISPLAY=:0
#systemctl --user import-environment XDG_CURRENT_DESKTOP DISPLAY
#dbus-update-activation-environment XDG_CURRENT_DESKTOP DISPLAY # used for filechoose when (down/up)load from browser

#setxkbmap -model acer_laptop -option grp:alt_shift_toggle us,ara
#xset r rate 200 55
#sxhkd &
#systemctl --user start dunst.service
#dunst &
#xwallpaper --stretch $XDG_CACHE_HOME/bg.jpg
#picom -b
#clipmenud &
#systemctl --user start clipmenud.service
#xrdb ~/.Xresources
#dwmblocks &
#exec dwm
