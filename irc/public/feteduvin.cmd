#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> https://img15.hostingpics.net/pics/833380IMG20170525170507.jpg" | nc -q 1 localhost $po