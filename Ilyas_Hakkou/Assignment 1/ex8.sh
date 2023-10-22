#!/bin/bash

#SBATCH --partition=special
#SBATCH --nodelist=node13
#SBATCH --exclude=node[02,03,15]


echo "hello from exercise 8"