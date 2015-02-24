#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

text=$(printf "frites\nbite\nfraiches\nau fromage\npas fraiches\nfarcies\nmarinieres\nau beurre\na la biere\nau wasabi et gingembre" | sort -R | head -1)

echo "$se 1 PRIVMSG $ch :${us}> $text" | nc -q 1 localhost $po
