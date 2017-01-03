#!/bin/bash
while read profile server user passwd locale pre
do 
	echo "create profile : $profile"
	echo "LC_ALL=$locale setsid rxvt-unicode -e $pre ~/usr/bin/autossh $server $user $passwd" > ~/usr/script/autossh/${profile}
	chmod +x ~/usr/script/autossh/${profile}
done <~/usr/etc/autossh.conf

export PATH=~/usr/script/autossh:$PATH
ls -1 ~/usr/script/autossh > ~/.cache/dmenu_go
