#!/bin/bash

#SBATCH --output=ex7_sacct_output

sacct --format=JobID,JobName,Partition,Account,AllocCPUS,Start,End,Elapsed,MaxRSS,MaxVMSize,ExitCode