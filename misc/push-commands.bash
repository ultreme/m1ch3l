#!/usr/bin/env bash

cd

if ! [ -d m1ch3l ]
then
    git clone git@github.com:ultreme/m1ch3l.git
fi

( cd m1ch3l && git pull)

cp ~/gorobot/root/scripts/public/* ~/m1ch3l/irc/public/

(
    cd m1ch3l
    git add irc/public/*.cmd
    git commit -am "gomme gomme une gomme"
    git push origin master
)
