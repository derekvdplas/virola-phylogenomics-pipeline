#!/bin/bash

#Mapping assembly, -a flag to output in SAM-format
minimap2 \
   -a \
   /location_of_reference/reference.fasta \
   /location_of_file/[SAMPLE]_R1.fastq.gz \
   /location_of_file/[SAMPLE]_R2.fastq.gz \
   > /location_of_output/mapped_[SAMPLE].sam \


#Sorting SAM-files and conversion to BAM, -l 9 flag for highest compression level, -o flag to specify output file, output is in BAM-format as per default
samtools sort \
   -l 9 \
   -o /location_of_output/sorted_mapped_[SAMPLE].bam \
   -@4 \
   /location_of_input/mapped_[SAMPLE].sam


#Indexing reference, this only needs to run once
samtools faidx /location_of_reference/reference.fasta


#Combination of make mpileup and calls
#mpileup: -Ou flags for specifying output type as uncompressed BCF, -f to specify reference file
#call: -m multiallelic-caller, -v to output variant sites only , -Oz output type as compressed VCF, -o specifying output file name
bcftools mpileup -Ou -f /location_of_reference/reference.fasta /location_of_input/sorted_mapped_[SAMPLE].bam | bcftools call -mv -Oz -o called_[SAMPLE].vcf.gz


#Indexing VCF files
bcftools index called_[SAMPLE].vcf.gz
