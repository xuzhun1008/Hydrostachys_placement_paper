#!/bin/sh

# cat ../05_final_tree/RAxML_bestTree* > 338gene.tre

# module load astral
# module load newickutils/1.6

# export _JAVA_OPTIONS="-Xmx4g"

# # 1 species trees with no contraction of polytomies
# astral -i 338gene.tre -o astral.tre 2> astral.log

# # 2 remove genes with fewer than half the species present
# astral -i 338gene.tre -o astral_half.tre -m 208 2> astral_half.log

# # 3 contract low support branches using The Newick Utilities
# nw_ed 338gene.tre 'i & b<33' o > 338gene_BS33.tre
# astral -i 338gene_BS33.tre -o astral_BS33.tre 2> astral_BS33.log



######## score tree
# produce quartet score on existing species tree
java -jar /mnt/c/Ubuntu/Astral/astral.5.7.7.jar -q astral.tre.rerooted -i 338gene.tre -t 3 -o astral_scored_rooted_t3.tre 2> astral_scored_rooted_t3.log

# # Alternative posteriors
# astral -q astral.tre.rerooted -i 338gene.tre -t 4 -o astral_scored_rooted_t4.tre 2> astral_scored_rooted_t4.log
