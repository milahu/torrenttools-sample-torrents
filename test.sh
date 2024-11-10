#!/usr/bin/env bash

for f in *.torrent; do
  echo "$f"
  for p in 1 2 hybrid; do
    echo $p
    torrenttools show infohash --protocol=$p "$f"
  done
  echo
done
