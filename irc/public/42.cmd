#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> Lle sens de la vie, de l'univers, tout ca n'a en fait aucun putain de sens, je vous le dit" | nc -q 1 localhost $po