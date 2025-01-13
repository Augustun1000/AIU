emerge -av app-emulation/qemu x11-misc/pcmanfm sys-process/htop app-misc/fastfetch sys-apps/gnome-disk-utility xfce-base/thunar xfce-base/thunar-volman xfce-extra/thunar-archive-plugin dev-util/pkgdev net-misc/connman app-editors/vim media-libs/libexif media-libs/imlib media-libs/imlib2 media-libs/sdl2-mixer media-libs/sdl2-ttf app-eselect/eselect-repository dev-vcs/git --quiet

#xd
rc-update add docker default
rc-service docker start

#Rebuild package and dependecy
emerge -ev (name)
#Force package
USE="-harfbuzz" emerge --ask --oneshot media-libs/freetype media-libs/sdl2-ttf 
#Remove packages
emerge --ask --verbose --depclean (name)
#Specified version 
emerge -av =dev-java/openjdk-bin-8.422_p05
