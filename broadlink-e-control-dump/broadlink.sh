#!/bin/bash

HOSTDIR=$HOME/.containerd/.broadlink

if [ ! -d $HOSTDIR ]; then
    mkdir -p $HOSTDIR
fi

docker run -i -t --rm \
  -v "$HOSTDIR:/home/`id -un`/.broadlink" \
  -v "$PWD:$PWD" \
  -w $PWD \
  -u `id -u` \
  dockerized-broadlink "$@"