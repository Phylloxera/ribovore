esearch -db nucleotide -query \
'complete genome[title] NOT Pilostyles[title] AND (refseq[filter] AND chloroplast[filter])' |efetch -format fasta > chloroplast_genomes.fasta
esearch -db nucleotide -query \
'mitochondrion[Title] AND complete genome[Title] AND animals[filter] AND refseq[filter]' |efetch -format fasta > animals.fasta
esearch -db nucleotide -query \
'mitochondrion[Title] AND complete genome[Title] AND "green algae"[filter] AND refseq[filter]'|efetch -format fasta > mito-chlorophyta_genomes.fasta
esearch -db nucleotide -query \
'"complete genome"[title] AND "rickettsias"[porgn] NOT plasmid[title] AND refseq[filter]'|efetch -format fasta > rickettsias_genomes.fasta
esearch -db nucleotide -query \
'mitochondrion[Title] AND complete genome[Title] AND fungi[filter] AND refseq[filter]' |efetch -format fasta > mito-fungi_genomes.fasta
esearch -db nucleotide -query \
'complete genome[title] AND "cyanobacteria"[porgn] AND refseq[filter] ' |efetch -format fasta > cyanobac_genomes.fasta
esearch -db nucleotide -query \
'mitochondrion[Title] AND complete genome[Title] AND protists[filter] AND refseq[filter]' |efetch -format fasta > mito-protist_genomes.fasta
esearch -db nucleotide -query \
'mitochondrion[Title] AND complete genome[Title] AND plants[filter] AND refseq[filter] NOT "green algae"[filter]'|efetch -format fasta > mito-plant_genomes.fasta