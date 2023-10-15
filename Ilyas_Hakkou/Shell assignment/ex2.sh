#!/bin/bash/

total_lines=0

for file in $(find . -type f -name "*.txt"); do
    file_lines=$(wc -l < "$file")
    total_lines=$((total_lines + file_lines))
done

echo "Total lines in all text files: $total_lines"