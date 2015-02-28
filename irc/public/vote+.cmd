#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

artist=$(curl -s "http://62.210.180.173:12348/?action=infos&format=json" | python -mjson.tool | grep "artist" | tail -n 1 | awk -F : '{print $2}' | tr -d ',' | tr -d '"')
title=$(curl -s "http://62.210.180.173:12348/?action=infos&format=json" | python -mjson.tool  | grep "left_title" | tail -n 1 | awk -F : '{print $2}' | tr -d ',' | tr -d '"')
music="$artist - $title"

nickmusic=${us}
music="music5 - test"
file="/home/m1ch3l/irc-data/vote.txt"

nickexist=0
musicexist="non"

if [ ! -f "$file" ]       # Est-ce que le fichier existe ?
then
  touch $file
fi

while IFS=";" read musicvote vote nicks
do
        if [ "$music" = "$musicvote" ]
        then
                musicexist=1


                for nick in $(echo $nicks | tr "," " ")
                do
                        echo $nick
                        if [ "$nickmusic" != "$nick" ]
                        then
                                nvote=$(($vote+1))
                        fi
                        if [ "$nickmusic" = "$nick" ]
                        then
                                nickexist=1
                        fi
                done
        else
                nmusic="$music;1;$nickmusic"
        fi
done < $file

if [ $musicexist != 1 ]
then
		$nickexist = 1
        echo $nmusic >> $file
		echo "$se 1 PRIVMSG $ch :${us}> Voté ! Total des votes pour $music : 1" | nc -q 1 localhost $po
fi

if [ $nickexist = 0 ]
then
        sed -i -e "s/$music;$(($nvote-1));/$music;$nvote;$nickmusic,/g" $file
		echo "$se 1 PRIVMSG $ch :${us}> Voté ! Total des votes pour $music : $nvote" | nc -q 1 localhost $po
else
echo "$se 1 PRIVMSG $ch :${us}> Tu as déjà voté petit chenapan" | nc -q 1 localhost $po
fi
