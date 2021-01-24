#!/bin/bash

if pgrep river; then
  wlogout -p layer-shell
else
  nwgbar -o 0.4
fi
