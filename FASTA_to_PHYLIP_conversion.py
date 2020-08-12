from Bio import SeqIO
records = SeqIO.parse("all_genes-all_samples.afa", "fasta")
count = SeqIO.write(records, "all_genes-all_samples.phylip", "phylip")
