#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sudo ln -sf "$DIR/npm.sh" /usr/local/bin/npm-docker

sudo ln -sf "$DIR/yarn.sh" /usr/local/bin/yarn-docker

sudo ln -sf "$DIR/node.sh" /usr/local/bin/node-docker