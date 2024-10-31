sudo qemu-system-x86_64 -enable-kvm -rtc base=localtime -m 2G -vga virtio -drive file=/dev/sda,readonly=on,cache=none,format=raw,if=virtio -bios /usr/share/ovmf/x64/OVMF.fd
