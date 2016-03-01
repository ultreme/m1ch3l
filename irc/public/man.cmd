#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

text=$(printf "superman\nbatman\nspiderman\npoliceman\nmanfred\nsupermanfred\nspidermanfred\npolicemanfred\nbatmanfred\nironman\nironmanfred\npowerman\nircman\ncoolman\nsympaman\nbienman\nplutot-cool-man\nplutot-sympa-man\nmuscleman\njambonman\nviandeman\nharicotman\nshaman\nvadiman\nmartinman\njamesman\nlouisman\nmaman" | sort -R | head -1)

echo "$se 1 PRIVMSG $ch :${us}> $text" | nc -q 1 localhost $po
