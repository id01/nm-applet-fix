#!/bin/bash

# Kill previous of same process
TOKILL=$(ps aux | grep fix-on-unlock.sh | grep /bin/bash | awk '{ print $2 }' | grep -v $$)
for pid in $TOKILL; do kill $pid; echo "killed $pid"; done

# Define nm-applet-fix
fixnm() {
	# Two base commands from nm-applet-fix
	killall nm-applet &> /dev/null
	echo 'nm-applet & disown' | /bin/bash &> /dev/null
}

# Check if unlocked, if so, launch nm-applet-fix
check() { while read aa; do fixnm; echo "RESTART"; done }

# Run for the first time
fixnm
echo "RESTART"

# Function to check unlocking
dbus-monitor --system "type='signal',sender='org.freedesktop.login1',interface='org.freedesktop.login1.Session'" | stdbuf -o0 grep 'member=Unlock' | check