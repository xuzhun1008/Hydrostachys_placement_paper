#!/bin/sh
# 1st mafft
mafft --auto 01_matK.fasta > 02_matK_mafft.fasta
# 2nd trimAl
/Applications/Phylogeny/trimAl/source/./trimal -in 02_matK_mafft.fasta -out 02_matK_mafft_trimed.fasta -gappyout -fasta
# rename, remove all characters after "blank"
sed 's/ .*$//g' 02_matK_mafft_trimed.fasta > 03_matK.fasta