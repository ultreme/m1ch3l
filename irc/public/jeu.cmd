#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> https://fr.wikipedia.org/wiki/Le_Jeu_\(divertissement\)" | nc -q 1 localhost $po