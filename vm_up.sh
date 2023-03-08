qemu-system-x86_64 -m 4G -smp 2 -enable-kvm \
	-hda $1 \
	-boot order=c \
	-device e1000,netdev=net0 \
	-netdev user,id=net0,hostfwd=tcp::5555-:22
