#!/bin/sh
#SBATCH --qos=soltis-b
#SBATCH --job-name=PMF      # Job name
#SBATCH --mail-type=END,FAIL             # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=xuzhun14@mails.ucas.ac.cn  # Where to send mail	
#SBATCH --nodes=1        	           # Number of nodes
#SBATCH --ntasks=1                  # Number of MPI ranks
#SBATCH --cpus-per-task=2            # Number of cores per MPI rank
#SBATCH --mem=2gb
#SBATCH --time=48:00:00              # Time limit hrs:min:sec
#SBATCH --output=PMF_%A-%a.out     # Standard output and error log
#SBATCH --array=1-338%10

pwd; hostname; date

module load perl
module load raxml

file=`ls *.masked.phy | head -n $SLURM_ARRAY_TASK_ID | tail -n 1`

echo Running PMF on $file

perl ProteinModelSelection.pl $file > $file.bestmodel.txt




date
