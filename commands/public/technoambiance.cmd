#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> 100% puisance    -    https://soundcloud.com/camembert-au-lait-crew/techno-ambiance-100-puissance" | nc -q 1 localhost $po