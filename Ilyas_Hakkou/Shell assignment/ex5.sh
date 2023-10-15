#!/bin/bash

mkdir large_files
touch large_files/logfile.log

echo "Moved files: " >> large_files/logfile.log

find . -type f -print0 | while IFS= read -r -d $'\0' file; do
  filesize=$(stat -c%s "$file")
  if [ $filesize -gt 10000000 ]; then
    echo $file >> large_files/logfile.log
    mv "$file" "large_files/"
  fi
done