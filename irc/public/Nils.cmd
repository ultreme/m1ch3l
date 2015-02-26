#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> Ah bah c'est bien Nils, super pour l'appareil photo !Genial !J\'te remercie" | nc -q 1 localhost $po