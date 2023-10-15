#!/bin/bash

mkdir -p -- "my_files"

for i in 1 2 3 4 5;
do
  touch "my_files/file$i.txt";
  echo "This is file $i." > "my_files/file$i.txt";
done