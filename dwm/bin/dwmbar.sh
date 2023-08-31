#!/usr/bin/bash

interval=0

speed_network() {

	# Obtener el nombre de la interfaz de red
	iface=$(ip route | grep default | sed -e "s/^.*dev.//" -e "s/.proto.*//")

	# Obtener el número de bytes recibidos y enviados
	received1=$(cat /sys/class/net/$iface/statistics/rx_bytes)

	sleep 1

	received2=$(cat /sys/class/net/$iface/statistics/rx_bytes)
	received_diff=$((received2 - received1))
	received_kbps=$((received_diff / 1024))

	printf "^c#3b414d^ ^b#E5C890^ 󰇚"
	printf "^c#abb2bf^ ^b#353b45^ $received_kbps kbps"

}

## Cpu Info
cpu_info() {
	cpu_load=$(grep -o "^[^ ]*" /proc/loadavg)

	printf "^c#3b414d^ ^b#A6D189^ CPU"
	printf "^c#abb2bf^ ^b#353b45^ $cpu_load"
}

## Memory
memory() {
	printf "^c#CA9EE6^^b#353B45^   $(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g) "
}

## Wi-fi
wlan() {
	case "$(cat /sys/class/net/w*/operstate 2>/dev/null)" in
	up) printf "^c#3b414d^^b#8CAAEE^  ^d^%s" " ^c#7aa2f7^$(iwgetid -r) " ;;
	down) printf "^c#3b414d^^b#8CAAEE^ 睊 ^d^%s" " ^c#E06C75^Disconnected " ;;
	esac
}

## Time
clock() {
	printf "^c#1e222a^^b#668ee3^  "
	printf "^c#1e222a^^b#8CAAEE^ $(date '+%a, %I:%M %p') "
}

## System Update
updates() {
	updates=$(checkupdates | wc -l)

	if [ -z "$updates" ]; then
		printf "^c#98C379^  Updated"
	else
		printf "^c#98C379^  $updates"" updates"
	fi
}

## Battery Info
battery() {
	BAT=$(upower -i $(upower -e | grep 'BAT') | grep 'percentage' | cut -d':' -f2 | tr -d '%,[:blank:]')
	AC=$(upower -i $(upower -e | grep 'BAT') | grep 'state' | cut -d':' -f2 | tr -d '[:blank:]')

	if [[ "$AC" == "charging" ]]; then
		printf "^c#E49263^  $BAT%%"
	elif [[ "$AC" == "fully-charged" ]]; then
		printf "^c#E78284^  Full"
	else
		if [[ ("$BAT" -ge "0") && ("$BAT" -le "20") ]]; then
			printf "^c#E98CA4^   $BAT%%"
		elif [[ ("$BAT" -ge "20") && ("$BAT" -le "40") ]]; then
			printf "^c#E98CA4^   $BAT%%"
		elif [[ ("$BAT" -ge "40") && ("$BAT" -le "60") ]]; then
			printf "^c#E98CA4^   $BAT%%"
		elif [[ ("$BAT" -ge "60") && ("$BAT" -le "80") ]]; then
			printf "^c#E98CA4^   $BAT%%"
		elif [[ ("$BAT" -ge "80") && ("$BAT" -le "100") ]]; then
			printf "^c#E98CA4^   $BAT%%"
		fi
	fi
}

## Brightness
brightness() {
	LIGHT=$(printf "%.0f\n" $(light -G))

	if [[ ("$LIGHT" -ge "0") && ("$LIGHT" -le "25") ]]; then
		printf "^c#56B6C2^  $LIGHT%%"
	elif [[ ("$LIGHT" -ge "25") && ("$LIGHT" -le "50") ]]; then
		printf "^c#56B6C2^  $LIGHT%%"
	elif [[ ("$LIGHT" -ge "50") && ("$LIGHT" -le "75") ]]; then
		printf "^c#56B6C2^  $LIGHT%%"
	elif [[ ("$LIGHT" -ge "75") && ("$LIGHT" -le "100") ]]; then
		printf "^c#56B6C2^  $LIGHT%%"
	fi
}

## Main
while true; do
	[ "$interval" == 0 ] || [ $(("$interval" % 3600)) == 0 ]
	interval=$((interval + 1))

	sleep 1 && xsetroot -name "$(speed_network) $(battery) $(brightness) $(cpu_info) $(memory) $(wlan) $(clock)"
done
