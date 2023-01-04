pacman -S grub efibootmgr
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

