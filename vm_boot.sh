qemu-system-x86_64 -m 4G -smp 2 -enable-kvm \
	-cdrom $1 \
	-hda $2 \
	-boot order=d

