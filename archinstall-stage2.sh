nano /etc/locale.gen
locale-gen
echo LANG=it_IT.UTF-8 > /etc/locale.conf
export LANG=it_IT.UTF-8
ln -s /usr/share/zoneinfo/Europe/Rome /etc/localtime
hwclock --systohc --utc
echo "Arch linux pc" > /etc/hostmame
pacman -Sy net-tools dhcpcd netctl -y
systemctl enable dhcpcd
pacman -S iwd wpa_supplicant wireless_tools dialog iw -y
systemctl enable iwd
passwd 
useradd -m -G wheel -s /bin/bash golook
passwd golook
EDITOR=nano visudo
pacman -S alsa-utils
pacman -S xf86-video-vesa -y 
pacman -S xorg-server xorg-xinit -y
pacman -s plasma kde-applications xdg-user-dirs sddm -y
systemctl enable sddm
pacman -S firefox konsole -y 
pacman -S networkmanager -y
systemctl enable NetworkManager
systemctl disable dhcpcd
pacman -S pipewire-pulse -y
pacman -S bluez bluez-utils blueman -y
systemctl enable bluetooth
