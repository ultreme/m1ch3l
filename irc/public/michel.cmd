#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> http://1.bp.blogspot.com/-LohRn0BWguA/VH76BUtS2bI/AAAAAAAAEsc/lCPz9urxKBY/s1600/GC2_00014.jpg" | nc -q 1 localhost $po