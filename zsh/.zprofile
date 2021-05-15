if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	selection()
	{
		select de in sway awesome
		do
			case $de in
				sway)
					exec sway
					;;
				awesome)
					exec startx
					;;
				*)
					selection
					;;
			esac
		done
	}

	PS3="Select the DE! "

	selection
fi
