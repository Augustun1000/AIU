#!/bin/bash
#Copyright (C) 2024 Augustun1000 <augustoperezriesgo@gmail.com>

case $BLOCK_BUTTON in
	1) notify-send "🕛"
esac

#function Shutdown() {
#    shutdown
#}
#function Power() {
#    xterm -e poweroff
#}
#function Reboot() {
#    xterm -e reboot
#}
#function Reboot-Openbox() {
#    openbox --reboot
#}
#function Exit-Qtile() {
#    pkill -SIGUSR1 qtile
#}
##
# Color  Variables
##
#green='\e[32m'
#blue='\e[34m'
#clear='\e[0m'
##
# Color Functions
#
#ColorGreen(){
#	echo -ne $green$1$clear
#}
#ColorBlue(){
#	echo -ne $blue$1$clear
#}
#menu(){
#echo -ne "
#Power menu
#$(ColorGreen '1)') Shutdown
#$(ColorGreen '2)') Power Off
#$(ColorGreen '3)') Reboot
#$(ColorGreen '4)') Reboot-Openbox
#$(ColorGreen '5)') Exit-Qtile
#$(ColorGreen '0)') Cancel o Ctrl+z
#$(ColorBlue 'Choose an option:') "
#        read a
#      case $a in
#           1) Shutdown ; menu ;;
#	        2) Power Off ; menu ;;
#	        3) Reboot ; menu ;;
#	        4) Reboot-Openbox ; menu ;;
#	        5) Exit-Qtile ; menu ;;
#		0) exit 0 ;;
#		*) echo -e $red"Wrong option."$clear; WrongCommand;;
#        esac
#}
# Call the menu function
#menu
