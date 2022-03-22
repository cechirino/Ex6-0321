#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    FILE_NAME="$(basename "${f}")"
    SIZE="$(du -sh "${f}" | cut -f1)"
    WORD_COUNT =  wc -w $FILE_NAME | cut -d' ' -f1
    echo "File name: $FILE_NAME"
    echo "File size: $SIZE"
  fi
done

