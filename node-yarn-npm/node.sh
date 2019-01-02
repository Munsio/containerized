#!/bin/bash

HOSTDIR=$HOME/.containerd/.node

if [ ! -d $HOSTDIR ]; then
    mkdir -p $HOSTDIR
fi

docker run -i -t --rm \
  -v "$HOSTDIR:/home/`id -un`/.node" \
  -v "$PWD:$PWD" \
  -w $PWD \
  -u `id -u` \
  dockerized-node "$@"