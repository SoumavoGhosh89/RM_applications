#!/bin/bash -l
# Version: 2021-October-21

# Initial working directory:
#SBATCH -D /u/twilm/research/RM_applications/py

# Job Name:
#SBATCH -J 1_mock_data

# Number of nodes and MPI tasks per node:
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH -o ../scripts/run1.log
#SBATCH -e ../scripts/run1.err
# SBATCH --exclude=freya???

# for OpenMP:
#SBATCH --cpus-per-task=40

# Notification:
#SBATCH --mail-type=all
#SBATCH --mail-user=trick@mpa-garching.mpg.de

# Wall clock limit:
#SBATCH --time=24:00:00

# Run the program:

conda activate py3_env

cd /u/twilm/research/RM_applications/py/

export OMP_NUM_THREADS=1

python create_initial_axisymmetric_disk_for_test_particle_simulation_EXAMPLE.py