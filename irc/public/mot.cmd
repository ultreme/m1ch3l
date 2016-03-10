#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> \[MOT\] Essayez de retrouver le mot originel avec ces lettres : b j a e G" | nc -q 1 localhost $po