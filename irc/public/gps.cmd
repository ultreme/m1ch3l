#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> gps on t\'aime même si tu fais pas de tip tip" | nc -q 1 localhost $po