#!/usr/bin/env bash

# sync script, two goals:
#
# - add new commands added via the web interface and autocommit them
# - pull modifications

cd

if ! [ -d m1ch3l ]
then
    git clone git@github.com:ultreme/m1ch3l.git
fi

(cd m1ch3l && git pull)

# apply modifications from the repo to commands first
chmod +x ~/m1ch3l/irc/public/*.cmd 2>/dev/null
cp ~/m1ch3l/irc/public/* /home/m1ch3l/gorobot/root/scripts/public/

# then push new commands
cp ~/gorobot/root/scripts/public/* ~/m1ch3l/irc/public/
(
    cd m1ch3l
    git add irc/public/*.cmd
    git commit -am "gomme gomme une gomme"
    git push origin master
)

# autoreload crontab
crontab -r
crontab < ~/m1ch3l/misc/crontabs.cron
