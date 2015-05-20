#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> Magikarp a perdu 100 point" | nc -q 1 localhost $po