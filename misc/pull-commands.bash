#!/usr/bin/env bash

cd

if ! [ -d m1ch3l ]
then
    git clone git@github.com:ultreme/m1ch3l.git
fi

( cd m1ch3l && git pull)

cp ~/m1ch3l/irc/public/* /home/m1ch3l/gorobot/root/scripts/public/
chmod +x /home/m1ch3l/gorobot/root/scripts/public/*.cmd

# autoreload crontab
crontab -r
crontab < ~/m1ch3l/misc/crontabs.cron
