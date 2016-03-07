#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> le flood de add par gajeb, ils racontent leur vie, ils vous parlent à travers les commandes, ils sont beaux comme des camions, ils font des blagues, " | nc -q 1 localhost $po