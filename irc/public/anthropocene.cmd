#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> populatio,n humaine individus \(milliards\) 7 6 1750 1800 1850 1900 1950 2000 5 4 3 2 1 0 tonnes de  fertilisants \(million\) consommation de fertilis" | nc -q 1 localhost $po