#!/bin/bash

HOSTDIR=$HOME/.containerd/.yarn

if [ ! -d $HOSTDIR ]; then
    mkdir -p $HOSTDIR
fi

docker run -i -t --rm \
  -v "$HOSTDIR:/home/`id -un`/.yarn" \
  -v "$PWD:$PWD" \
  -w $PWD \
  -u `id -u` \
  --entrypoint "yarn" \
  dockerized-node "$@"