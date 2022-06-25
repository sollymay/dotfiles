running=$(playerctl status)
if [ "$running" == "Playing" ]; then
    artist=$(playerctl metadata artist)
    song=$(playerctl metadata title | cut -c 1-60)
    echo -n " $artist - $song "
else
    echo -n " No media playing"
fi
