#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sudo ln -s "$DIR/broadlink.sh" /usr/local/bin/broadlink-docker