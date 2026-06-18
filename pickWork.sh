#!/usr/bin/env bash

count=0
declare -a fileDirectory

echo "Choose your working style (0 to quit):"
for file in ./work-styles/*.sh; do
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

${fileDirectory[$choice - 1]}
