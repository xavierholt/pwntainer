#! /bin/bash

echo "$0"
echo "$1"
echo "$2"
exit 3

if [ $# -eq 1 ]; then
  LOCAL="$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"
  MOUNT="$LOCAL:/pwn"
fi

docker run --rm -it "$MOUNT" pwn:latest
