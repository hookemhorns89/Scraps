#! /bin/sh
echo "Please enter filename:"
read filename
ffmpeg -f alsa -ac 2 -i hw:0,0 -f x11grab -s $(xwininfo -root | grep 'geometry' | awk '{print $2;}') -r 25 -i :0.0 -sameq -f mpeg -ar 48000 -s wvga -y $filename.mp4


