#!/bin/bash

array=(accD atpA atpB atpE atpF atpH atpI ccsA cemA clpP infA matK ndhA ndhB ndhC ndhD ndhE ndhF ndhG ndhH ndhI ndhJ ndhK petA petB petD petG petL petN psaA psaB psaC psaI psaJ psbA psbB psbC psbD psbE psbF psbH psbI psbJ psbK psbL psbM psbN psbT psbZ rbcL rpl14 rpl16 rpl2 rpl20 rpl22 rpl23 rpl32 rpl33 rpl36 rpoA rpoB rpoC1 rpoC2 rps11 rps12 rps14 rps15 rps16 rps18 rps19 rps2 rps3 rps4 rps7 rps8 ycf2 ycf3 ycf4)

for gene in "${array[@]}"

  do 
    ./01_seqtk/seqtk subseq ../00_original_data/${gene}.sorted.fna 00_ID_seedplant/${gene}_seedplant_ID.lst > 02_seedplant_data/${gene}.fasta
  done   