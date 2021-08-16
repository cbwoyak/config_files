#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"

if [ -f ~/.tmux.conf ]
then
  echo "Sourcing tmux config file $SCRIPT_DIR/tmux.conf"
  echo "source -q $SCRIPT_DIR/tmux.conf" >> ~/.tmux.conf
else
  echo "Copying TMUX config file to $HOME"
  cp $SCRIPT_DIR/tmux.conf ~/.tmux.conf
fi

