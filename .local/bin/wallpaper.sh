#!/bin/sh

directory="Wallpapers"
[[ -d $XDG_PICTURES_DIR/$directory ]] || (notify-send "'$directory' directory doesn't exist" && exit 1)
[[ -d $XDG_CACHE_HOME ]] || (mkdir ~/.cache && notify-send "'cache' directory created")
#wp="$(ls -A $XDG_PICTURES_DIR/$directory | dmenu -i -l 10 -p '󰸉 set background:')"
wallpaper="$(nsxiv -q -t -o $XDG_PICTURES_DIR/$directory | awk -F "/" '{print $NF}')"
xwallpaper --stretch $XDG_PICTURES_DIR/$directory/$wallpaper 2> /dev/null && cp $XDG_PICTURES_DIR/$directory/$wallpaper $XDG_CACHE_HOME/Wallpaper.jpg && notify-send 'Wallpaper set'
