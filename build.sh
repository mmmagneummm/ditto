truncate -s 1024M ditto.img
mkfs.ext4 ditto.img
mkdir ~/mnt
echo "-Sudo asking you for mount img file-"
sudo mount ditto.img ~/mnt
echo "-Sudo asking you for copy rootfs to img file-"
sudo cp -r rootfs/* ~/mnt
echo "-Sudo asking you for install syslinux bootloader to img file-"
sudo extlinux --install ~/mnt
echo "-Sudo asking you for unmount img file-"
sudo umount ditto.img
