#!/bin/sh
#SBATCH --qos=soltis-b
#SBATCH --job-name=RAxML      # Job name
#SBATCH --mail-type=END,FAIL             # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=xuzhun14@mails.ucas.ac.cn  # Where to send mail	
#SBATCH --nodes=1        	           # Number of nodes
#SBATCH --ntasks=1                  # Number of MPI ranks
#SBATCH --cpus-per-task=6            # Number of cores per MPI rank
#SBATCH --mem=300mb
#SBATCH --time=96:00:00              # Time limit hrs:min:sec
#SBATCH --output=RAxML_%A-%a.out     # Standard output and error log
#SBATCH --array=1-231%20

pwd; hostname; date

module load raxml/8.2.10

file=`ls *.phy | head -n $SLURM_ARRAY_TASK_ID | tail -n 1`

echo Running RAxML on $file

raxmlHPC-PTHREADS-SSE3 -m PROTGAMMAJTT -T $SLURM_CPUS_PER_TASK -n $file.ml.tre -s $file -p $RANDOM -N 100 -b $RANDOM

#rm RAxML_log.$file.* RAxML_parsimonyTree.$file.* RAxML_result.$file.* 

date
