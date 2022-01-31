#!/bin/bash 

# dependencies
sudo apt-get install -y jq

PROJ_DIR="$(dirname $)/"

BASEDIR="$PROJ_DIR/BASE/"
RUDIR="$PROJ_DIR/RU/"
ENDIR="$PROJ_DIR/EN/"

sudo docker build -t pavlovma007/media_to_text.base -f $BASEDIR/Dockerfile $BASEDIR

# Languages:

sudo docker build -t pavlovma007/media_to_text.ru -f $RUDIR/Dockerfile $RUDIR
#sudo docker build -t pavlovma007/media_to_text.en -f $ENDIR/Dockerfile $ENDIR


