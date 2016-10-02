#!/bin/bash

# If quiet is specified...
if [ $1 == "--quiet" ]; then
	quiet=true;
else
	quiet=false;
fi

# If not quiet, give output and perform pauses
if [ $quiet -eq false ]; then
	if [ -t 0 ]; then
		echo "Killing nm-applet"
		killall nm-applet
		sleep 1
		echo "Starting nm-applet in background"
		echo 'nm-applet & disown' | /bin/bash
		sleep 1
		echo "Done."
	else
		killall nm-applet
		sleep 1
		echo 'nm-applet & disown' | /bin/bash
		sleep 1
		zenity --notification --text "Done Resetting nm-applet"
	fi
else
	# Else, just execute these two base commands
	killall nm-applet
	echo 'nm-applet & disown' | /bin/bash
fi