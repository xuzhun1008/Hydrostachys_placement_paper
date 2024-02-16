# Phylogenetic placement of *Hydrostachys* 
Here are scripts used in the paper ['Re-examining the placement of *Hydrostachys* using a large-scale phylogenetic approach'](https://doi.org/10.1002/tax.13122)
## Overview
In this paper, we conducted a large-scale phylogenetic analysis based on nuclear and chloroplast data sets to reexamine the relationships of the genus and assess the data sources and methodological factors that may cause alternative placements.
1. **Phylogenetic analysis based on nuclear genes.** We generated 12 *Hydrostachys* transcriptomes and designed a pipeline to recover the target sequences using 1KP single-copy nuclear gene data sets (downloaded from [1KP Github Pages](https://github.com/smirarab/1kp.git)) as references. We obtained an eudicot data set from the 1KP green plant data set, and kept only one sample for each genus. Then conducted phylogeny reconstruction based on three different data sets: amino acid sequences (AA), nucleotide sequences (NA), and nucleotide sequences without the third codon positions (C12).
2. **Phylogenetic analysis based on chloroplast genomes.** To build a large-scale phylogeny for angiosperms based on protein-coding genes from complete chloroplast genomes, we sampled seed plants from the green plants nucleotide data set presented by [Gitzendanner](https://github.com/magitz/1KP_Plastid.git) and added recently published [*Hydrostachys* chloroplast genomes genome data](https://doi.org/10.1016/j.ympev.2019.106601) to the seed plant data set.
3. ***matK* issue reexamination.** To reexamine the explanation proposed by [Burleigh et al. (2009)](https://doi.org/10.1186/1471-2148-9-61
) that unusual phylogenetic placements for *Hydrostachys* appear to be driven by *matK* sequences, we sampled all *Hydrostachys* *matK* sequences from GenBank and added these to the *matK* seed plants data set (obtained from step 2).


### Other packages used in this study
- [exon-stitching](https://github.com/juliema/exon_stitching#exon_stitching) by Julie M Allen
- [seqtk](https://github.com/lh3/seqtk) by Heng Li
- [TreeShrink](https://github.com/uym2/TreeShrink) by Uyen Mai
- [ASTRAL](https://github.com/smirarab/ASTRAL.git) by Siavash Mirarab
- [GGTREE](https://github.com/YuLab-SMU/ggtree.git) by Guangchuang Yu
- [catfasta2phyml](https://github.com/nylander/catfasta2phyml.git) by Johan Nylander
