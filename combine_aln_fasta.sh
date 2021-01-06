#!/bin/bash


#Give the directory of the fasta files to be combined
ALIGN_FASTA_DIR="/home/dvdp/test_room/"

#Give all the species that you want combined, announcing genes is not necessary
LIST_OF_SPECIES=("cactus" "tulipa")


#Concatenate all gene files of a species to a single species file with all genes
for SPECIES in "${LIST_OF_SPECIES[@]}"; do
	cat $ALIGN_FASTA_DIR/$SPECIES\_*.afa >> $SPECIES\_all.afa

done
