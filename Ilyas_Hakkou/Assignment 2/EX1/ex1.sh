#!/bin/bash

#SBATCH --array=1-128
#SBATCH --partition=special
#SBATCH -n 128

mpirun -n $SLURM_ARRAY_TASK_ID python3 script.py