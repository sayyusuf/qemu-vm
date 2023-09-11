if [[ -n $1 && -n $2 ]]
then 
	qemu-system-x86_64 -m 4G -smp 2 -enable-kvm \
		-cdrom $1 \
		-hda $2 \
		-boot order=d
else
	echo "err: usage 'sudo ./vm_boot.sh isofile.iso  image.img'"
fi
