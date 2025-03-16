#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 &
feh --bg-fill ~/.config/DWMbyAugustun1000/scripts/Created-by-コダマ.png &
xset r rate 200 50 &

dash ~/.config/DWMbyAugustun1000/scripts/statusbar.sh &
while type DWMbyAugustun1000 >/dev/null; do DWMbyAugustun1000 && continue || break; done
