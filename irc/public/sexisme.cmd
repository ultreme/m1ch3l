#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> https://www.facebook.com/Moustachedechat/posts/10208622777786846\?comment_id=10208625744181004\&notif_t=like" | nc -q 1 localhost $po