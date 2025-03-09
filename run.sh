#!/usr/bin/with-contenv bash
# Ensure FFmpeg is installed in the add-on image or install it if needed.
# Assuming rainsound.mp3 is located in /share
ffmpeg -re -stream_loop -1 -i /share/rainsound.mp3 -c copy -f mp3 http://0.0.0.0:8000/stream.mp3
