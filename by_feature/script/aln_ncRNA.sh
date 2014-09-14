#PBS -N ncRNA_aln -l nodes=1:ppn=4

module load bedtools

coverageBed -abam ../../allreads_aln_Nc12/PP.bam -b milRNA.bed -counts > PP.milRNA.count
coverageBed -abam ../../allreads_aln_Nc12/PP.bam -b disiRNA_Nc12.bed -counts > PP.disiRNA.count
coverageBed -abam ../../allreads_aln_Nc12/PP.bam -b tRNA_Nc12.bed -counts > PP.tRNA.count
coverageBed -abam ../../allreads_aln_Nc12/PP.bam -b snoRNA_Nc12.bed -counts > PP.snoRNA.count
coverageBed -abam ../../allreads_aln_Nc12/PP.bam -b rDNA_Nc12.bed -counts > PP.rDNA.count
coverageBed -abam ../../allreads_aln_Nc12/PP.bam -b MSUD_Nc12.bed -counts > PP.msuRNA.count

coverageBed -abam ../../allreads_aln_Nc12/2PF.bam -b milRNA.bed -counts > 2PF.milRNA.count
coverageBed -abam ../../allreads_aln_Nc12/2PF.bam -b disiRNA_Nc12.bed -counts > 2PF.disiRNA.count
coverageBed -abam ../../allreads_aln_Nc12/2PF.bam -b tRNA_Nc12.bed -counts > 2PF.tRNA.count
coverageBed -abam ../../allreads_aln_Nc12/2PF.bam -b snoRNA_Nc12.bed -counts > 2PF.snoRNA.count
coverageBed -abam ../../allreads_aln_Nc12/2PF.bam -b rDNA_Nc12.bed -counts > 2PF.rDNA.count
coverageBed -abam ../../allreads_aln_Nc12/2PF.bam -b MSUD_Nc12.bed -counts > 2PF.msuRNA.count


coverageBed -abam ../../allreads_aln_Nc12/4PF.sorted.bam -b milRNA.bed -counts > 4PF.milRNA.count
coverageBed -abam ../../allreads_aln_Nc12/4PF.sorted.bam -b disiRNA_Nc12.bed -counts > 4PF.disiRNA.count
coverageBed -abam ../../allreads_aln_Nc12/4PF.sorted.bam -b tRNA_Nc12.bed -counts > 4PF.tRNA.count     
coverageBed -abam ../../allreads_aln_Nc12/4PF.sorted.bam -b snoRNA_Nc12.bed -counts > 4PF.snoRNA.count
coverageBed -abam ../../allreads_aln_Nc12/4PF.sorted.bam -b rDNA_Nc12.bed -counts > 4PF.rDNA.count
coverageBed -abam ../../allreads_aln_Nc12/4PF.sorted.bam -b MSUD_Nc12.bed -counts > 4PF.msuRNA.count
