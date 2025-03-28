sudo dd conv=fdatasync iflag=fullblock status=progress bs=4m of=$DEVICE if=$ISO

sudo fdisk --wipe=never -t dos $DEVICE
# make a new partition, primary, default number, size dependent on device but leave some room

mkfs.ext4 $NEW_PARTITION #/dev/sdXY made in the previous command
