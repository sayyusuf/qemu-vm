#!/usr/bin/bash

if [[ -n $1  &&  -n $2 && -n $3 ]]
then
	qemu-system-x86_64 -m $1 -smp 2 -enable-kvm \
		-cdrom $2 \
		-hda $3 \
		-boot order=d
else
	echo "err: usage 'sudo ./vm_boot.sh 4G isofile.iso  image.img'"
fi
