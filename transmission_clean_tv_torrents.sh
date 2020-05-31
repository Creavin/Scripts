#!/bin/bash

DEST=~/Desktop/Complete\ Torrents
mv "$TR_TORRENT_DIR/$TR_TORRENT_NAME" "$DEST"
rename_tv_show.sh "$DEST/$TR_TORRENT_NAME" &>> ~/Desktop/log.txt
