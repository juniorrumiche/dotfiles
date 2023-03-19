#!/bin/bash
#
if [[ "$1" == "--next" ]]; then
	mpc next && kunst
elif [[ "$1" == "--prev" ]]; then
	mpc prev && kunst
elif [[ "$1" == "--toogle" ]]; then
	mpc toggle
else
	get_backlight
fi
