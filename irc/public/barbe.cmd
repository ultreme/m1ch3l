#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

paroles="taliban !
djihadiste !
hipster !
bucheron !"

text=$(echo "$paroles" | sort -R | head -1)

echo "$se 1 PRIVMSG $ch :${us}> $text" | nc -q 1 localhost $po
