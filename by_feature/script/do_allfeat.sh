module load stajichlab
module load stajichlab-perl
perl /rhome/jstajich/src/genome-scripts/short-read/SAM_summarize_sizes_by_feature.pl -gff all_feats_nogene.gff3 -g ../genome.fa -d SAM_sizes_by_feature.newlenmeasure *.bam
