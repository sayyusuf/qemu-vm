if [[ -n $1 && -n $2 && -n $3 ]]
then 
	qemu-system-x86_64 -m $1 -smp 2 -enable-kvm \
		-hda $2 \
		-boot order=c \
		-device e1000,netdev=net0 \
		-netdev user,id=net0,hostfwd=tcp::$3
else
	echo "err: usage 'sudo ./vm_up.sh 4G image.img 5555-:22'"
fi
