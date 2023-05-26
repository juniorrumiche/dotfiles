#!/usr/bin/env bash

# Icons
iDIR='/usr/share/archcraft/icons/dunst'
notify_cmd='dunstify -u low -h string:x-dunst-stack-tag:obvolume'

# Get Volume
get_volume() {
  echo "`pactl list sinks | grep 'Volume:' | head -n1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' `"
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
  elif [[ ("$current" -ge "60") && ("$current" -le "120") ]]; then
    icon="$iDIR/volume-high.png"
  fi
  ${notify_cmd} -i "$icon" "Volume : $current%"
}

# Increase Volume
inc_volume() {
  [[ `pulsemixer --get-mute` == 1 ]] && pulsemixer --unmute
  if [[ $(get_volume) -gt 110 ]]
  then
    get_icon
  else
    pactl set-sink-volume @DEFAULT_SINK@ +5% && get_icon 
  fi
}

# Decrease Volume
dec_volume() {
  [[ `pulsemixer --get-mute` == 1 ]] && pulsemixer --unmute
  pactl set-sink-volume @DEFAULT_SINK@ -5% && get_icon 
}

# Toggle Mute
toggle_mute() {
  if [[ `pulsemixer --get-mute` == 0 ]]; then
    pulsemixer --toggle-mute && ${notify_cmd} -i "$iDIR/volume-mute.png" "Mute"
  else

    pulsemixer --toggle-mute && ${notify_cmd} -i "$iDIR/volume-mid.png" "Unmute"
  fi
}

# Toggle Mic
toggle_mic() {
  ID="`pulsemixer --list-sources | grep 'Default' | cut -d',' -f1 | cut -d' ' -f3`"
  if [[ `pulsemixer --id $ID --get-mute` == 0 ]]; then
    pulsemixer --id ${ID} --toggle-mute && ${notify_cmd} -i "$iDIR/microphone-mute.png" "Microphone Switched OFF"
  else
    pulsemixer --id ${ID} --toggle-mute && ${notify_cmd} -i "$iDIR/microphone.png" "Microphone Switched ON"
  fi
}

# Execute accordingly
if [[ -x `which pulsemixer` ]]; then
  if [[ "$1" == "--get" ]]; then
    get_volume
  elif [[ "$1" == "--inc" ]]; then
    inc_volume
  elif [[ "$1" == "--dec" ]]; then
    dec_volume
  elif [[ "$1" == "--toggle" ]]; then
    toggle_mute
  elif [[ "$1" == "--toggle-mic" ]]; then
    toggle_mic
  else
    echo $(get_volume)%
  fi
else
  ${notify_cmd} "'pulsemixer' is not installed."
fi
