#!/bin/sh
#PBS -N fluent_job
#PBS -q batch
#PBS -l walltime=01:00:00
#PBS -l nodes=1:ppn=2,pmem=4g,feature=vasara
#PBS -j oe

INPUT_FILE="instruction.journal"

echo "Node: `/bin/hostname`"
echo "Time started: `date`"

module load ansys/2023-R1

cd $PBS_O_WORKDIR
fluent 3d -g -t $PBS_NUM_PPN -mpi=ibmmpi -i $INPUT_FILE

echo "Time ended: `date`"
