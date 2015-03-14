#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> Bulbizarre Herbizarre Florizarre Salamèche Reptincel Dracaufeu Carapuce Carabaffe Tortank Chenipan Chrysacier Papilusion Aspicot Coconfort Dardargnan" | nc -q 1 localhost $po