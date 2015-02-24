#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

R=$RANDOM
title=$(curl "http://www.camembertaulaitcrew.biz/hackz/recettator?recette=$R" | grep '<h3' | cut -d'<' -f2 | cut -d'>' -f2 | recode html..ascii)
text="$title (http://www.camembertaulaitcrew.biz/hackz/recettator?recette=$R)"


echo "$se 1 PRIVMSG $ch :${us}> $text" | nc -q 1 localhost $po
