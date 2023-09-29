#! /bin/sh
# Iterate over all files in the specified directory
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)" # Get the size of the file
    WORD_COUNT="$(wc -w "${f}" | cut -d' ' -f1)" # Get the word count of the file
    
    echo "Processing $f file..."
    echo "Size: $SIZE"
    echo "Word Count: $WORD_COUNT"
  fi
done

