#!/usr/bin/env bash


if [ "$1" == "--float" ]; then
	st -c 'alacritty-float,alacritty-float' 
elif [ "$1" == "--full" ]; then
	alacritty --class 'Fullscreen,Fullscreen' --config-file "$CONFIG" -o window.startup_mode=fullscreen window.padding.x=30 window.padding.y=30 window.opacity=0.95 font.size=14
else
	alacritty --config-file "$CONFIG"
fi
