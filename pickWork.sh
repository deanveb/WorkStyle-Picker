#!/usr/bin/env bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

count=0
declare -a fileDirectory

echo "Choose your working style (0 to quit):"
for file in $SCRIPT_DIR/work-styles/*.sh; do
  fileDirectory+=($file)
  filename=${file##*/}
  ((count++))
  echo "$count.$filename"
done

read -r choice

while [[ choice -gt count ]]; do
  echo "Choice not found!"
  read -r choice
done

if [[ choice -eq 0 ]]; then
  exit
fi

${fileDirectory[$choice - 1]}
