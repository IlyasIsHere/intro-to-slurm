#!/bin/bash

read -p "Enter the path of the directory :" directory

find "$directory" -type d -empty | while read -r subdir; do
  echo "Deleting empty directory: $subdir"
  rmdir "$subdir"
done