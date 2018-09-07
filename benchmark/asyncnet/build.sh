#!/bin/bash

if [ ! -f server ]; then
  echo "building asyncnet..."
  nim c -d:release --verbosity:0 --hints:off server.nim
fi
