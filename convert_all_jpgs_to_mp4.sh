#!/bin/bash

# converts jpgs to 5 second video
ffmpeg -framerate 1 -pattern_type glob -i '*.jpg' -acodec copy  -c:v libx264 -r 30 -pix_fmt yuv420p out.mp4
