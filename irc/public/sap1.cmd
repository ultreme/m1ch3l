#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> http://recueil-de-png.r.e.pic.centerblog.net/73d8949b.png" | nc -q 1 localhost $po