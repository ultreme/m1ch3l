#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> humour gras et lourd, pas dans le sens de wesh lourd gros chill posey, mais lourd gras quoi, comique de répétition lourd \#les meilleures blagues so" | nc -q 1 localhost $po