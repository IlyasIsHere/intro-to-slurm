#!/bin/bash

#SBATCH --output=stdout.%x.%j
#SBATCH --error=stderr.%x.%j

echo "hello"
mkdir test