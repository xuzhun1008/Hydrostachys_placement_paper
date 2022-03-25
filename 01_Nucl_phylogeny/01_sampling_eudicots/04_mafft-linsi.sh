#!/bin/sh
#SBATCH --qos=soltis-b
#SBATCH --job-name=mafft      # Job name
#SBATCH --mail-type=END,FAIL             # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=xuzhun14@mails.ucas.ac.cn  # Where to send mail	
#SBATCH --nodes=1        	           # Number of nodes
#SBATCH --ntasks=1                  # Number of MPI ranks
#SBATCH --cpus-per-task=4            # Number of cores per MPI rank
#SBATCH --mem=4gb
#SBATCH --time=48:00:00              # Time limit hrs:min:sec
#SBATCH --output=mafft_%A-%a.out     # Standard output and error log
#SBATCH --array=1-410%10

pwd; hostname; date

module load mafft

file=`ls *.fasta | head -n $SLURM_ARRAY_TASK_ID | tail -n 1`

echo Running mafft on $file

mafft-linsi --thread $SLURM_CPUS_PER_TASK $file > $file.mafft


date
