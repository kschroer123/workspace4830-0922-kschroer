#! /bin/sh
for f in "$1"/* do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    WORD="$(wc -w "(f)" | cut -f2)"
    echo "Processing $f file..."
    echo "Size: $SIZE"
    echo "Word Count: $WORD"
  fi
done
