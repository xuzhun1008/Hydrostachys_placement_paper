#!/bin/bash
#SBATCH --qos=soltis
#SBATCH --job-name=mafft      # Job name
#SBATCH --mail-type=END,FAIL             # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=xuzhun14@mails.ucas.ac.cn  # Where to send mail	
#SBATCH --ntasks=1                  # Number of MPI ranks
#SBATCH --cpus-per-task=6            # Number of cores per MPI rank
#SBATCH --nodes=1        	           # Number of nodes
#SBATCH --ntasks-per-node=1         # How many tasks on each node
#SBATCH --mem-per-cpu=1gb
#SBATCH --time=96:00:00              # Time limit hrs:min:sec
#SBATCH --output=mafft_%A-%a.out     # Standard output and error log
#SBATCH --array=1-78%2

pwd; hostname; date

module load mafft

file=`ls *.fasta | head -n $SLURM_ARRAY_TASK_ID | tail -n 1`

echo Running mafft on $file

mafft-linsi --thread $SLURM_CPUS_PER_TASK --add $file --keeplength ../../00_1kp_seedplant_nu/02_mafft-linsi/$file.mafft > $file.mafftadd


date
