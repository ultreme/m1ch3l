#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> We're going on a trip, In our favorite rocket ship. Zooming through the sky, Little Einsteins. Climb aboard, get ready to explore. There's so much to " | nc -q 1 localhost $po