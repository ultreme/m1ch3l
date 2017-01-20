#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> http://les-mots-du-vin.fr/wp-content/uploads/2015/08/F%C3%AAte-du-vin-de-Madiran.png" | nc -q 1 localhost $po