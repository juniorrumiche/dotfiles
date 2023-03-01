#!/usr/bin/env bash


## rofi sudo askpass helper
export SUDO_ASKPASS=/usr/share/archcraft/dwm/bin/askpass.sh

## execute the application
sudo -A $1
