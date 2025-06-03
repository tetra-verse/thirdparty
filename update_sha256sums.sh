#!/bin/bash

RELEASE_DIR="releases"
OUTPUT_FILE="sha256sums.txt"

if [[ ! -d "$RELEASE_DIR" ]]; then
  echo "Dir $RELEASE_DIR NO EXIST!!!"
  exit 1
fi

# clean previous sha256sums.txt
> "$OUTPUT_FILE"

for file in "$RELEASE_DIR"/*; do
  if [[ -f "$file" ]]; then
    filename=$(basename "$file")
    sha256=$(sha256sum "$file" | awk '{print $1}')
    echo "$sha256  $filename" >> "$OUTPUT_FILE"
  fi
done