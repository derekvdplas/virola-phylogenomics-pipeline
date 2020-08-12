#!/bin/bash

#Please check out RAxML manual, since it is incredibly extensive.
#A DNA partition file is necessary that requires a certain lay-out (specified in RAxML manual)

#Inferring of phylogenetic relationships

raxmlHPC \
        -s /location_of_file/all_genes-all_samples.PHYLIP \
        -m GTRGAMMAX \
        -n Virola \
        -p 12345 \
        -f a \
        -x 12345 \
        -N 100 \
        -T 2 \
        -q /location_of_file/DNApartition.txt
