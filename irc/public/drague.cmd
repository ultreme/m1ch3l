#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> Dis euh je suis timide tu veux sortir avec moi" | nc -q 1 localhost $po