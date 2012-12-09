#! /bin/sh
echo "Please enter filename:"
read filename
ffmpeg -f alsa -ac 2 -i hw:0,0 -f x11grab -s 1280x800 -r 24 -i :0.0 -qscale 5 $filename.mp4


