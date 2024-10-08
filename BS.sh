#!/bin/bash
#Copyright (C) 2023 Augustun1000 <augustoperezriesgo@gmail.com>

# List of packages to install
#Active multilib, edit /etc/pacman.conf
sudo pacman -S --noconfirm xorg-server xorg-xinit xorg-xrandr xdg-user-dirs xf86-video-intel mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-tools yad arandr gvfs htop neofetch pcmanfm-gtk3 lm_sensors lxappearance-gtk3 nano geany rofi p7zip flameshot xarchiver meld mplayer ttf-dejavu ttf-liberation noto-fonts-cjk pulsemixer mtpfs gvfs-mtp gvfs-gphoto2 os-prober ncdu chromium gparted xorg-xev


#Universal intel drivers (All gen 1 to up)
#sudo pacman -S xf86-video-intel vulkan-intel lib32-vulkan-intel vulkan-tools mesa lib32-mesa

#Drivers gen 8 to up
#sudo pacman -S xf86-video-intel vulkan-intel lib32-vulkan-intel vulkan-tools mesa lib32-mesa intel-media-driver intel-compute-runtime intel-media-driver
# Terminal testing: sudo pacman -S libva-utils vdpauinfo clinfo
