#!/bin/bash
#Copyright (C) 2024 Augustun1000 <augustoperezriesgo@gmail.com>
function Power-menu() {
    function PowerOff() {
    poweroff
}
function Reboot() {
    Reboot
}
function Reboot() {
    reboot
}
menu(){
echo -ne "
Power menu
$(ColorGreen '1)') Shutdown
$(ColorGreen '2)') PowerOff
$(ColorGreen '3)') Reboot
$(ColorBlue 'Choose an option:') "
        read a
        case $a in
            1) shutdown ; menu ;;
	        2) poweroff; menu ;;
	        3) reboot; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}
# Call the menu function
menu
}
function Volumen-Control() {
    pulsemixer
}
function Upgrade-System() {
    sudo pacman -Syyu
}
function Upgrade-Aur() {
    yay -Syyu
}
function Music-Player-Cli() {
    cmus
}
function Terminal-Browser() {
    w3m google.com
}
function File-Viewer-Cli() {
    ranger
}
function Disk-Usage-Cli() {
    ncdu
}
function Compare-Files() {
    meld
}
##
# Color  Variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'
##
# Color Functions
##
ColorGreen(){
	echo -ne $green$1$clear
}
ColorBlue(){
	echo -ne $blue$1$clear
}
menu(){
echo -ne "
Utilities menu
$(ColorGreen '1)') Power-menu
$(ColorGreen '2)') Volumen-Control
$(ColorGreen '3)') Upgrade-System
$(ColorGreen '4)') Upgrade-Aur
$(ColorGreen '5)') Music-Player-Cli
$(ColorGreen '6)') File-Viewer-Cli
$(ColorGreen '7)') Disk-Usage-Cli
$(ColorGreen '8)') Compare-Files
$(ColorGreen '9)') Cancel o Ctrl+z
$(ColorBlue 'Choose an option:') "
        read a
        case $a in
	        1) Power-menu ; menu ;;
	        2) Volumen-Control ; menu ;;
	        3) Upgrade-System ; menu ;;
	        4) Upgrade-Aur ; menu ;;
	        5) Music-Player-Cli ; menu ;;
	        6) File-Viewer-Cli ; menu ;;
	        7) Disk-Usage-Cli ; menu ;;
	        8) Compare-Files ; menu ;;
		9) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}
# Call the menu function
menu
#v8Wt7b3akG amazon
