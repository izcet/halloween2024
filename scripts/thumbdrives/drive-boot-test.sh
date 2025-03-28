sudo qemu-system-x86_64 -enable-kvm -rtc base=localtime -m 2G -vga virtio -drive file=/dev/sda,readonly=on,cache=none,format=raw,if=virtio -bios /usr/share/ovmf/x64/OVMF.fd

# alternative flags used:
# -drive if=pflash,format=raw,readonly=on,file=/usr/share/OVMF/x64/OVMF_CODE.4m.fd
# -drive if=pflash,format=raw,file=/usr/share/OVMF/x64/OVMF_VARS.4m.fd

# notes:
# the minimal command to boot an arbitrary drive most of the time is:
# 
#   `sudo qemu-system-x86_64 -enable-kvm -m 1024 -drive file=/dev/sdX,format=raw`
#
# adding `-vga virtio` will fix display corruption errors,
# which I ran into when a multiboot drive pivots into a gentoo iso
#
# the `-drive if=pflash(...)OVMF_CODE.4m.fd` or `-bios (...)` commands were required
# to indirect into any image from the multiboot
#
# I never got OpenBSD to boot via QEMU ever, even if the drive would boot normally on bare metal
# FreeBSD OOMs at `-m 1024` with the `-drive (...) OVMF_CODE.fd`
#
# to my knowledge, I never used/needed the OVMF_VARS, but my experimentation was mostly guess-and-check
#
