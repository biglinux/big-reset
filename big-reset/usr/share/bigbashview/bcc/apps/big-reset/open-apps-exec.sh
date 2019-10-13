#!/bin/bash

case "$1" in

	web)
	/usr/bin/bigapache			
	exit
	;;

	kernel)
	bigsudo /usr/bin/bigkernel
	;;

	java)
	/usr/bin/bigflash-javaws-widevine-fonts
	exit
	;;
	
	samba)
	/usr/bin/sambasearch
	exit
	;;
	
	tema)
	/usr/bin/biglinux-themes-gui
	exit
	;;	
	
	*)
	exit
	;;
esac



