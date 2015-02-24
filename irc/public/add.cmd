#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> ajoute ta commande ici: http://m1ch3l.sbrk.org/commands/" | nc -q 1 localhost $po