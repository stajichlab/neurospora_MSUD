#PBS -l nodes=1:ppn=1,mem=2gb -N featlen -j oe 
# runs the generation script
# does require Bio::DB::Sam to be installed

module load perl
mkdir -p by_feature/sizes_by_feature.bowtie
perl ../genome-scripts/short-read/SAM_summarize_sizes_by_feature.pl --gff ../Nc12_features/all_feats_nogene.gff3 -g ../Nc12/neurospora_crassa_or74a_12_supercontigs.fasta -d by_feature/sizes_by_feature.bowtie bam/*.bowtie.bam

mkdir -p by_feature/sizes_by_feature.bwa
perl ../genome-scripts/short-read/SAM_summarize_sizes_by_feature.pl --gff ../Nc12_features/all_feats_nogene.gff3 -g ../Nc12/neurospora_crassa_or74a_12_supercontigs.fasta -d by_feature/sizes_by_feature.bwa bam/*.bwa.bam
