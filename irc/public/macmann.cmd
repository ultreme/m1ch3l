#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

paroles="https://soundcloud.com/macmann-1/fan
https://soundcloud.com/macmann-1/nieu-nieu-nieu-nieu-nieu-nieu-nieu-nia
https://soundcloud.com/macmann-1/xavier2000
https://www.youtube.com/watch?v=N8FQoLOOvyA
https://www.youtube.com/watch?v=fJFdZBlfwcI"

text=$(echo "$paroles" | sort -R | head -1)

echo "$se 1 PRIVMSG $ch :${us}> $text" | nc -q 1 localhost $po
