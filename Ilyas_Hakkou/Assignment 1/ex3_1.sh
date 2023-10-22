#!/bin/bash

#SBATCH --partition=special
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --array=2-11

line=$(sed -n "${SLURM_ARRAY_TASK_ID}p" config.txt)

samplename=$(echo $line | cut -d ' ' -f2)
taskid=$(echo $line | cut -d ' ' -f1)
gender=$(echo $line | cut -d ' ' -f3)

echo "This is array task $taskid, the sample name is $samplename and the sex is $gender." >> output.txt