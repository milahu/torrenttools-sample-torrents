#!/usr/bin/env bash

shopt -s nullglob
for f in {good,bad}/*.torrent *.torrent; do
  echo "$f"
  for p in 1 2 hybrid; do
    echo $p
    torrenttools show infohash --protocol=$p "$f"
  done
  echo
done
