#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

futur=$(date -v+42d)
echo "$se 1 PRIVMSG $ch :${us}> dans 42 demains: $futur" | nc -q 1 localhost $po
