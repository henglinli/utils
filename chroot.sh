#!/bin/sh
echo "chroot into folder $1"
mount --types proc /proc $1/proc
mount --rbind /sys $1/sys
mount --make-rslave $1/sys
mount --rbind /dev $1/dev
mount --make-rslave $1/dev
chroot $1 /bin/zsh
