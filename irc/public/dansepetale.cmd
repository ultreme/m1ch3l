#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> quelle attaque de tafiole..." | nc -q 1 localhost $po