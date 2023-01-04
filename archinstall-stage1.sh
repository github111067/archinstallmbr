cfdisk /dev/sda
mkfs.fat -F32 /dev/sda1
mkswap /dev/sda2
mkfs.ext4 /dev/sda3
mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
swapon /dev/sda2
reflector --verbose --country Italy --sort rate --save /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel git linux-zen linux-firmware nano vim
genfstab -U -p /mnt > /mnt/etc/fstab
arch-chroot /mnt /bin/bash
