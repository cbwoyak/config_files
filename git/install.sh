#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"

if [ -f ~/.gitconfig ]
then
  cp ~/.gitconfig ~/.gitconfig.bak
fi
cp $SCRIPT_DIR/gitconfig ~/.gitconfig
