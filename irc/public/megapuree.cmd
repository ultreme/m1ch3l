#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> Salut,  J'aimerais savoir comment faire une bonne purée Je sais déjà faire la ratatouille, les endives au jambon, le gratin Et plein d'autres plats" | nc -q 1 localhost $po