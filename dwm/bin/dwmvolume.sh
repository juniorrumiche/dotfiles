#!/usr/bin/env bash

# Icons
iDIR='/usr/share/archcraft/icons/dunst'
notify_cmd='dunstify -u low -h string:x-dunst-stack-tag:obvolume'

# Get Volume
get_volume() {
	echo "$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }' | sed 's/%//')"
}

# Get icons
get_icon() {
	current="$(get_volume)"
	if [[ "$current" -eq "0" ]]; then
		icon="$iDIR/volume-mute.png"
	elif [[ ("$current" -ge "0") && ("$current" -le "30") ]]; then
		icon="$iDIR/volume-low.png"
	elif [[ ("$current" -ge "30") && ("$current" -le "60") ]]; then
		icon="$iDIR/volume-mid.png"
	elif [[ ("$current" -ge "60") && ("$current" -le "100") ]]; then
		icon="$iDIR/volume-high.png"
	fi
}

# Notify
notify_user() {
	${notify_cmd} -i "$icon" "Volume : $(get_volume)%"
}

# Increase Volume
inc_volume() {
	amixer -q sset Master 5%+ &
	get_icon && notify_user
}

# Decrease Volume
dec_volume() {
	amixer -q sset Master 5%- &
	get_icon && notify_user
}

# Toggle Mute
toggle_mute() {
	if amixer -c 0 get Master | grep off; then
		amixer -q sset Master toggle && get_icon && ${notify_cmd} -i "$icon" "Unmute"
	else
		amixer -q sset Master toggle && ${notify_cmd} -i "$iDIR/volume-mute.png" "Mute"
	fi
}

# Execute accordingly
if [[ -x $(which amixer) ]]; then
	if [[ "$1" == "--get" ]]; then
		get_volume
	elif [[ "$1" == "--inc" ]]; then
		inc_volume
	elif [[ "$1" == "--dec" ]]; then
		dec_volume
	elif [[ "$1" == "--toggle" ]]; then
		toggle_mute
	else
		echo $(get_volume)%
	fi
else
	${notify_cmd} "'amixer' Please Install."
fi
