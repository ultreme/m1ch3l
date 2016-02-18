#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> Bonne nuit les enfants, prenez soin de vous et croyez toujours en l\'amour parce ça, ça croute, hein stevezinzin \?" | nc -q 1 localhost $po