#!/bin/sh

TOGGLE=$HOME/.emoji

if [ ! -e $TOGGLE ]; then
	touch $TOGGLE
	xmodmap  -e  "keycode 10 = U1F642"
	xmodmap  -e  "keycode 11 = U1F60E"
	xmodmap  -e  "keycode 12 = U1F601"
	xmodmap  -e  "keycode 13 = U1F602"
	xmodmap  -e  "keycode 14 = U1F923"
	xmodmap  -e  "keycode 15 = U1F605"
	xmodmap  -e  "keycode 16 = U1F61C"
	xmodmap  -e  "keycode 17 = U1F618"
	xmodmap  -e  "keycode 18 = U1F60D"
	xmodmap  -e  "keycode 19 = U1F634"
else
    rm $TOGGLE
    setxkbmap -option
fi