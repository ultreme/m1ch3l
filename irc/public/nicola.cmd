#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> Je voudrais leur dire qu’on a reçu un coup de pied au derrière mais que c’est pas parce que vous voulez renverser la table que vous descendez de" | nc -q 1 localhost $po