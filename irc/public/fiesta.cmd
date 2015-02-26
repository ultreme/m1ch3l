#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> c\'est la fiesta woohooo  --  http://www.camembertaulaitcrew.biz/static/cache/c2b92e7e8ca5221852f76b82bed838a8.png" | nc -q 1 localhost $po
