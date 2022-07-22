#!/bin/bash

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

function get_volume {
    amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
    amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function send_notification {
    volume=`get_volume`
    # Make the bar with the special character ─ (it's not dash -)
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq -s "--" $(($volume / 5)) | sed 's/[0-9]//g')
    # Send the notification
    dunstify "Volume [$volume%]" -t 4000 -r 2593 -h int:value:$volume
#     dunstify -i audio-volume-muted-blocking -t 4000 -r 2593 -u normal " Volume $volume%
# $bar"
}

case $1 in
    up)

	# Up the volume (+ 5%)
	 amixer sset Master 5%+ > /dev/null
	send_notification
	;;
    down)
	amixer sset Master 5%- > /dev/null
	send_notification
	;;
    mute)
    	# Toggle mute
	amixer set Master toggle > /dev/null
	if is_mute ; then
	    dunstify -i audio-volume-muted -t 4000 -r 2593 -u normal " Volume Muted
   "
	else
	    send_notification
	fi
	;;
esac
