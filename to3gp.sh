#!/bin/bash

for i in "$@"; do ffmpeg -i "$i" -r 8 -vcodec mpeg4 -acodec aac -ar 8000 -ac 1 -vf "scale=320:240" ${i%.mp4}.3gp 
done
