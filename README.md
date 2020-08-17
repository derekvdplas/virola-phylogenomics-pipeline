These scripts were used to assemble, annotating, multiple sequence aligning and inferring phylogenetic trees among the genus Virola and family of Myristicaceae. This repository contains the scripts that were used for this investigation. For more details, please ask Rutger Vos (Naturalis) to see the Material and Methods of "A workflow for chloroplast DNA phylogenomics applied to Virola Aublet (Myristicaceae)".

All scripts are written in Bash, except for FASTA_to_PHYLIP_conversion.py in Python.

Dependencies: minimap2, SAMtools, IGV, Geneious, BCFtools, Muscle, BioPython, RAxMLHPC, treeannotator, FigTree. 

File prerequisites:
  - Filtered and Quality-assessed Illumina reads in FASTA format.
  - A plastid genome that can be used as reference chloroplast.
