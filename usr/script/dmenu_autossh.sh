#!/bin/sh
M=$(dmenu < ~/.cache/dmenu_go)
eval ~/usr/script/autossh/$M

