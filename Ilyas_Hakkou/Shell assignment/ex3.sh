#!/bin/bash

cat input.txt | tr -s ' ' '\n' | sort | uniq -c | sort -nr