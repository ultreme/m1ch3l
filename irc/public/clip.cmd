#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

google="https://www.youtube.com/results?search_query="
artist=$(curl -s "http://62.210.180.173:12348/?action=infos&format=json" | python -mjson.tool | grep artist | tail -n 1 | awk -F : '{print $2}' | tr -d ',' | tr -d '"')
title=$(curl -s "http://62.210.180.173:12348/?action=infos&format=json" | python -mjson.tool  | grep left_title | tail -n 1 | awk -F : '{print $2}' | tr -d ',' | tr -d '"')

music=$(echo $artist$title | sed 's/\ /%20/g')
url=$google$music

echo "$se 1 PRIVMSG $ch :${us}> $url" | nc -q 1 localhost $po
