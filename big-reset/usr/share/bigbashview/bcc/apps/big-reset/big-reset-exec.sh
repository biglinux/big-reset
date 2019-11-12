#!/bin/bash

windowID="$(xprop -root '\t$0' _NET_ACTIVE_WINDOW | cut -f 2)"

PROG=$(pgrep -x .*$1.*)

if [ "$PROG" != "" ]; then
	kdialog --attach="$windowID" --warningyesno $"O programa está aberto!\nDeseja fechar?"
	RET="$?"
	[ "$RET" == "0" ] && kill -9 $(echo "$PROG") || kdialog --attach="$windowID" --msgbox $"É aconselhável fechá-lo!"
fi

case "$1" in

	firefox)
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm -r ~/.mozilla
			cp -r /etc/skel/.mozilla ~/.mozilla
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm -r ~/.mozilla
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
		exit
		;;

	chromium)	
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm -r ~/.config/chromium
			cp -r /etc/skel/.config/chromium ~/.config/chromium
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm -r ~/.config/chromium
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
		exit
		;;

	chrome)
		rm -r ~/.config/google-chrome
		kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		exit
		;;
		
	min)
		rm -r ~/.config/Min
		kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		exit
		;;
		
	brave)
		rm -r ~/.config/BraveSoftware
		kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		exit
		;;

	waterfox)
		rm -r ~/.waterfox
		cp -r /usr/share/waterfox-latest/ptbr ~/.waterfox
		kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		exit
		;;

	smplayer)
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm -r ~/.config/smplayer
			cp -r /etc/skel/.config/smplayer ~/.config/smplayer
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm -r ~/.config/smplayer
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
		exit
		;;

	clementine)
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm -r ~/.config/Clementine
			cp -r /etc/skel/.config/Clementine ~/.config/Clementine
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm -r ~/.config/Clementine
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
		exit
		;;

	gimp)
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm -r ~/.config/GIMP
			cp -r /etc/skel/.config/GIMP ~/.config/GIMP
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm -r ~/.config/GIMP
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
		exit
		;;

	libreoffice)
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm -r ~/.config/libreoffice
			cp -r /etc/skel/.config/libreoffice ~/.config/libreoffice
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm -r ~/.config/libreoffice
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
		exit
		;;

	openbox)
		TEMA=$(cat ~/.big_desktop_theme)
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm -r ~/.config/openbox
			cp -r /usr/share/biglinux/themes/$TEMA/.config/openbox ~/.config/openbox
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm -r ~/.config/openbox
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
		exit
		;;

	lxqt)
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm -r ~/.config/lxqt
			cp -r /etc/skel/.config/lxqt ~/.config/lxqt
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm -r ~/.config/lxqt
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
		exit
		;;

	pcmanfm)
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm -r ~/.config/pcmanfm-qt
			cp -r /etc/skel/.config/pcmanfm-qt ~/.config/pcmanfm-qt
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm -r ~/.config/pcmanfm-qt
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
		exit
		;;

	kde)
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm -r ~/.kde
			rm -r ~/.kdebiglinux
			cp -r /etc/skel/.kde ~/.kde
			cp -r /etc/skel/.kdebiglinux ~/.kdebiglinux
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm -r ~/.kde
			rm -r ~/.kdebiglinux
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
	exit
	;;

	qbittorrent)
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm -r ~/.config/qBittorrent
			cp -r /etc/skel/.config/qBittorrent ~/.config/qBittorrent
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm -r ~/.config/qBittorrent
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
		exit
		;;

	compton)
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm ~/.config/compton.conf
			cp /etc/skel/.config/compton.conf ~/.config/compton.conf
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm ~/.config/compton.conf
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
		exit
		;;

	konsole)
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm -r ~/.local/share/konsole
			cp -r /etc/skel/.local/share/konsole ~/.local/share/konsole
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm -r ~/.local/share/konsole
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
		exit
		;;

	compiz)
		yad --center --title=$"BigLinux Reset" --window-icon=favicon.ico \
			--text=$"\n\tAo restaurar o programa, as configurações que você fez nesse programa serão apagadas e a configuração original será restaurada.\n" \
			--button="Restaurar para o padrão da distribuição":0 --button="Restaurar para o padrão do programa":1 --button="gtk-cancel":2
		ret="$?"
		if [ "$ret" == "0" ]; then
			rm -r ~/.config/compiz-1
			cp -r /etc/skel/.config/compiz-1 ~/.config/compiz-1
			kdialog --attach="$windowID" --msgbox $"Configurações da distribuição restauradas!"
		elif [ "$ret" == "1" ]; then
			rm -r ~/.config/compiz-1
			kdialog --attach="$windowID" --msgbox $"Configurações padrão do programa restauradas!"
		else
			exit
		fi
		exit
		;;
			
	*)
	kdialog --attach="$windowID" --error $"ERRO: Opção inválida!"
	exit
	;;
esac
