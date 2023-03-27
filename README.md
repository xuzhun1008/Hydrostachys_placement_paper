# Phylogenetic placement of *Hydrostachys* 
Here are scripts used in the paper 'Re-examining the placement of *Hydrostachys* using a large-scale phylogenetic approach'
## Brief introduction
In this paper, we conducted a large-scale phylogenetic analysis based on nuclear and chloroplast data sets to reexamine the relationships of the genus and assess the data sources and methodological factors that may cause alternative placements.
1. **Phylogenetic analysis based on nuclear genes.** We generated 12 *Hydrostachys* transcriptomes and designed a pipeline to recover the target sequences using 1KP single-copy nuclear gene data sets (downloaded from [1KP Github Pages](https://github.com/smirarab/1kp.git)) as references. We obtained an eudicot data set from the 1KP green plant data set, and kept only one sample for each genus. Then conducted phylogeny reconstruction based on three different data sets: amino acid sequences (AA), nucleotide sequences (NA), and nucleotide sequences without the third codon positions (C12).
2. **Phylogenetic analysis based on nuclear genes.** 
3. ***matK* issue reexamination.**


### Other packages used in this study
- [exon-stitching](https://github.com/juliema/exon_stitching#exon_stitching) by Julie M Allen
- [seqtk](https://github.com/lh3/seqtk) by Heng Li
- [TreeShrink](https://github.com/uym2/TreeShrink) by Uyen Mai
- [ASTRAL](https://github.com/smirarab/ASTRAL.git) by Siavash Mirarab
- [GGTREE](https://github.com/YuLab-SMU/ggtree.git) by Guangchuang Yu
- [catfasta2phyml](https://github.com/nylander/catfasta2phyml.git) by Johan Nylander
