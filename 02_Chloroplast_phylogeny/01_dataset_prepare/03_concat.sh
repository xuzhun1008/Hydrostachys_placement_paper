#!/bin/bash

module load perl/5.20.0

mkdir 03_concatenate 


perl catfasta2phyml.pl -c 02_trimAL/renamed/*.fasta > 03_concatenate/concat.phy 2> 03_concatenate/partitions.cat

