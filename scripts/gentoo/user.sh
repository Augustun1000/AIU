useradd augustun1000 &
usermod -aG wheel augustun1000 &
usermod -aG kvm augustun1000 &
usermod -aG pipewire augustun1000 &
usermod -aG audio augustun1000 &
usermod -aG video augustun1000 &
usermod -aG plugdev augustun1000 &
usermod -aG docker augustun1000 &
chmod +s /sbin/shutdown &
chmod +s /sbin/reboot &
passwd augustun1000

#
nano /etc/rc.conf
rc_parallel="YES"
