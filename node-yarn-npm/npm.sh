#!/bin/bash

HOSTDIR=$HOME/.containerd/.npm

if [ ! -d $HOSTDIR ]; then
    mkdir -p $HOSTDIR
fi

docker run -i -t --rm \
  -v "$HOSTDIR:/home/`id -un`/.npm" \
  -v "$PWD:$PWD" \
  -w $PWD \
  -u `id -u` \
  --entrypoint "npm" \
  dockerized-node "$@"