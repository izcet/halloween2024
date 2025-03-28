# multiboot usb iteration

```
# note local mnt not /mnt
mount /dev/sda1 mnt
mount /dev/sda2 mnt/boot/iso-ext4
```

`../scripts/thumbdrives/drive-boot-test.sh` helps with iterating grub config changes
