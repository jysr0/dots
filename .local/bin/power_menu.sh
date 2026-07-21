#!/bin/sh

op1="󰐥 shutdown"
op2="󰜉 restart"
op3="󰤄 sleep"
op4=" hibernate"
op5=" lock"
op6="󰍃 logout"
ansy=" yes"
ansn=" no"

operation=$((printf "$op1\n" ; printf "$op2\n" ; printf "$op3\n" ; printf "$op4\n" ; printf "$op5\n" ; printf "$op6\n") | dmenu -noi -p '󰐥:') # '' is from no input dmenu patch.
#operation=$((printf "$op1\n" ; printf "$op2\n" ; printf "$op3\n" ; printf "$op4\n" ; printf "$op5\n" ; printf "$op6\n") | rofi -dmenu -i -l 10 -p '')
if [[ $operation == $op1 ]]; then
	confirmation=$((printf "$ansn\n"; printf "$ansy\n") | dmenu -noi -p "$operation?:")
	#confirmation=$((printf "$ansn\n"; printf "$ansy\n") | rofi -dmenu -i -p "$operation?:")
	[[ $confirmation == $ansy ]] && systemctl poweroff
elif [[ $operation == $op2 ]]; then
	confirmation=$((printf "$ansn\n"; printf "$ansy\n") | dmenu -noi -p "$operation?:")
	[[ $confirmation == $ansy ]] && systemctl reboot
elif [[ $operation == $op3 ]]; then
	systemctl suspend && slock
elif [[ $operation == $op4 ]]; then
	confirmation=$((printf "$ansn\n"; printf "$ansy\n") | dmenu -noi -p "$operation?:")
	[[ $confirmation == $ansy ]] && systemctl hibernate
elif [[ $operation == $op5 ]]; then
	confirmation=$((printf "$ansn\n"; printf "$ansy\n") | dmenu -noi -p "$operation?:")
	[[ $confirmation == $ansy ]] && slock
elif [[ $operation == $op6 ]]; then
	confirmation=$((printf "$ansn\n"; printf "$ansy\n") | dmenu -noi -p "$operation?:")
	[[ $confirmation == $ansy ]] && loginctl -s 15 --no-ask-password terminate-session ${XDG_SESSION_ID}
fi
