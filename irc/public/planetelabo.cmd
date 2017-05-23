#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> https://laboratoryplanet.org/wp-content/uploads/2016/04/PLANETELABORATOIREn5.pdf" | nc -q 1 localhost $po