#!/bin/sh
#SBATCH --job-name=Trinity    # Job name
#SBATCH --mail-type=ALL               # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=xuzhun14@mails.ucas.ac.cn   # Where to send mail
#SBATCH --qos=soltis-b
#SBATCH --partition=hpg2-compute	
#SBATCH --nodes=1                     # Use one node
#SBATCH --ntasks=1                    # Run a single task
#SBATCH --cpus-per-task=8
#SBATCH --mem=80G                   # Memory limit per node
#SBATCH --time=96:00:00               # Time limit (hh:mm:ss)
#SBATCH --output=Trinity_ssc2_2_%j.out   # Standard output and error log

pwd; hostname; date

module load trinity/r20180823-2.8.3

Trinity --seqType fq --max_memory 80G --CPU $SLURM_CPUS_PER_TASK \
        --left ssc2_2_1.clean.fq.gz \
        --right ssc2_2_2.clean.fq.gz \
        --output $TMPDIR/ssc2_2_Trinity_out
        
cp -r $TMPDIR/ssc2_2_Trinity_out /ufrc/soltis/xuzhun/Trinity/

date
