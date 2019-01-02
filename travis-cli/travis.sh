#!/bin/bash

HOSTDIR=$HOME/.containerd/.travis

if [ ! -d $HOSTDIR ]; then
    mkdir -p $HOSTDIR
fi

docker run -i -t --rm \
  -v "$HOSTDIR:/home/`id -un`/.travis" \
  -v "$PWD:$PWD" \
  -w $PWD \
  -u `id -u` \
  dockerized-travis "$@"