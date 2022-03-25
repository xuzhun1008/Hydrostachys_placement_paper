#!/bin/bash
#SBATCH --qos=soltis
#SBATCH --job-name=exonerate      # Job name
#SBATCH --mail-type=FAIL,END             # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=xuzhun14@mails.ucas.ac.cn  # Where to send mail	
#SBATCH --ntasks=1                  # Number of MPI ranks
#SBATCH --cpus-per-task=4            # Number of cores per MPI rank
#SBATCH --nodes=1        	           # Number of nodes
#SBATCH --ntasks-per-node=1         # How many tasks on each node
#SBATCH --mem=4gb
#SBATCH --time=96:00:00              # Time limit hrs:min:sec
#SBATCH --output=exonerate_%j.out     # Standard output and error log


module load exonerate/2.2.0

bash exon_stitching.sh taxa.lst ../../2_ref_1KP/8_consensus/0_ref_Hydrostachys.fasta ../2_cut80_assembies/
