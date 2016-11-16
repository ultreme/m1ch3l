#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> power run ! https://www.youtube.com/watch\?v=ak5P_FVbs9k" | nc -q 1 localhost $po