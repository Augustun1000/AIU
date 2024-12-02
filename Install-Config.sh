#!/bin/bash
#Copyright (C) 2024 Augustun1000 <augustoperezriesgo@gmail.com>

#My custom config for openbox, rofi, kitty terminal and tint2
xdg-user-dirs-update &&
mv /home/augustun1000/AIU/* /home/augustun1000/ &&
7z x .config.7z -aoa &&
startx
dwmblocks
