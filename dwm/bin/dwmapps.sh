#!/usr/bin/env bash

if [[ "$1" == "--file" ]]; then
	thunar
elif [[ "$1" == "--editor" ]]; then
	geany
elif [[ "$1" == "--web" ]]; then
	firefox
fi
