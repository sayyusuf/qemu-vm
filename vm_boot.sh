qemu-system-x86_64 -m 4G -enable-kvm \
	-cdrom $1 \
	-hda $2 \
	-boot order=d

