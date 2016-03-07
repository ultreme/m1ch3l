#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> A la très chère, à la très belle Qui remplit mon coeur de clarté, A l'ange, à l'idole immortelle, Salut en l\'immortalité !" | nc -q 1 localhost $po