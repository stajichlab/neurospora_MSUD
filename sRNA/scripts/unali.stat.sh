#PBS -l nodes=1:ppn=8 -N align

cd /rhome/ywang/bigdata-shared/projects/neurospora_MSUD/allreads_aln_Nc12

~/bam2fastq/bam2fastq-1.1.0/bam2fastq -f --no-aligned 4PF.sorted.bam -o 4PF.unalign.fq
~/bam2fastq/bam2fastq-1.1.0/bam2fastq -f --no-unaligned 4PF.sorted.bam -o 4PF.align.fq

~/bam2fastq/bam2fastq-1.1.0/bam2fastq -f --no-aligned PP.bam -o PP.unalign.fq
~/bam2fastq/bam2fastq-1.1.0/bam2fastq -f --no-unaligned PP.bam -o PP.align.fq

~/bam2fastq/bam2fastq-1.1.0/bam2fastq -f --no-aligned 2PF.bam -o 2PF.unalign.fq
~/bam2fastq/bam2fastq-1.1.0/bam2fastq -f --no-unaligned 2PF.bam -o 2PF.align.fq
