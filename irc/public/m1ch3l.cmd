#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

paroles="oui, c'est moi.
que puis-je faire pour toi ?"

text=$(echo "$paroles" | sort -R | head -1)

echo "$se 1 PRIVMSG $ch :${us}> $text" | nc -q 1 localhost $po
