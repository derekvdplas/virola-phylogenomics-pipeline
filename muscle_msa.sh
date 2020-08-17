#!/bin/bash

#Multiple sequence alignment after manually concatenating all genes (alphabetical order) per sample to one file,
#and then concatenating these files under their respective headers (sample names) to one big FASTA-file (containing all genes of all samples).

muscle -in all_genes-all_samples.fa -out all_genes-all_samples.afa
