#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

google="https://www.youtube.com/results?search_query="
full_title=$(curl -s "http://62.210.180.173:12348/?action=infos&format=json" | python -mjson.tool | grep "full_title"  | head -n 1 | awk -F : '{print $2}' | tr -d ',' | tr -d '"')

if [ "$full_title"="" ]
then
  full_title=$(curl -s "http://62.210.180.173:12348/?action=infos&format=json" | python -mjson.tool | grep "filename"  | head -n 1 | awk -F / '{print $5}' | tr -d ',' | tr -d '"')
fi

music=$(echo $full_title | sed 's/\ /%20/g')
url=$google$music

echo "$se 1 PRIVMSG $ch :${us}> $url" | nc -q 1 localhost $po
