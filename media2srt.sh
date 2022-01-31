#!/bin/bash 

# путь к медиафайлу
AUDIO_PATH=$1
# param - FULL path to mediafile
# prog print out text to stdout

IMAGE=pavlovma007/media_to_text.ru
VOLUME="-v '$AUDIO_PATH:/tmp/in'"
#VOLUME=""

PROG=test_srt.py
bash -c "sudo docker run --rm $VOLUME $IMAGE bash -c 'cd /app/python/example && ./$PROG /tmp/in  2>/dev/null'" 

exit 0

