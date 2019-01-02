#!/bin/bash

HOSTDIR=$HOME/.containerd/.yarn/cache

if [ ! -d $HOSTDIR ]; then
    mkdir -p $HOSTDIR
fi

docker run -i -t --rm \
  -v "$HOSTDIR:/home/`id -un`/.yarn" \
  -v "$PWD:$PWD" \
  -w $PWD \
  -u `id -u` \
  -e YARN_CACHE_FOLDER="/home/`id -un`/.yarn/cache" \
  --entrypoint "yarn" \
  dockerized-node "$@"