#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> Le mot sexe désigne souvent l\'appareil reproducteur, ou l’acte sexuel et la sexualité dans un sens plus global, mais se réfère aussi aux diffé" | nc -q 1 localhost $po