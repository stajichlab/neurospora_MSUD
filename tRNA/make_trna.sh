module load tRNAscan-SE
tRNAscan-SE ../Nc12/neurospora_crassa_or74a_12_supercontigs.fasta > trna.out
perl /opt/stajichlab/stajich-genome-scripts/live/data_format/trnascan2gff3.pl trna.out > trna.gff3
