#!/bin/bash 

# путь к медиафайлу
AUDIO_PATH=$1

# param - FULL path to mediafile
# write out text to current directory

IMAGE=pavlovma007/media_to_text.ru
VOLUME="-v '$AUDIO_PATH:/tmp/in'"

PROG=test_ffmpeg.py
bash -c "sudo docker run --rm -it $VOLUME $IMAGE bash -c 'cd /app/python/example && ./$PROG /tmp/in  2>/dev/null'"  \
	| jq --raw-output  'select(.text!=null) .text' | tr -s "\r" "\n"

 
exit 0
