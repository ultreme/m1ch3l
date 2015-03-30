#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> http://s1download-universal-soundbank.com/mp3/sounds/11620.mp3" | nc -q 1 localhost $po