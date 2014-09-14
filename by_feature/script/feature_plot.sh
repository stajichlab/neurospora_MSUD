#PBS -N ncRNA_aln -l nodes=1:ppn=8

cd /rhome/ywang/bigdata-shared/projects/neurospora_MSUD/by_feature_Nc12/done

#intersectBed -abam ../../allreads_aln_Nc12/PP.bam -b tRNA_Nc12.bed > ./feature_length/PP.tRNA.bam

#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  ./feature_length/PP.tRNA.bam -o  ./feature_length/PP.tRNA.fq

#cat  ./feature_length/PP.tRNA.fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > PP.tRNA.fq

#intersectBed -abam ../../allreads_aln_Nc12/PP.bam -b tRNA_Nc12.bed > PP_tRNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/2PF.bam -b tRNA_Nc12.bed > 2PF_tRNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/4PF.bam -b tRNA_Nc12.bed > 4PF_tRNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/PP.bam -b snoRNA_Nc12.bed >PP_snoRNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/2PF.bam -b snoRNA_Nc12.bed > 2PF_snoRNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/4PF.bam -b snoRNA_Nc12.bed > 4PF_snoRNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/PP.bam -b rDNA_Nc12.bed > PP_rDNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/2PF.bam -b rDNA_Nc12.bed > 2PF_rDNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/4PF.bam -b rDNA_Nc12.bed > 4PF_rDNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/PP.bam -b milRNA_Nc12.bed > PP_milRNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/2PF.bam -b milRNA_Nc12.bed > 2PF_milRNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/4PF.bam -b milRNA_Nc12.bed > 4PF_milRNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/PP.bam -b disiRNA_Nc12.bed > PP_disiRNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/2PF.bam -b disiRNA_Nc12.bed > 2PF_disiRNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/4PF.bam -b disiRNA_Nc12.bed > 4PF_disiRNA_bam
#intersectBed -abam ../../allreads_aln_Nc12/PP.bam -b MSUD_Nc12.bed > PP_MSUD_bam
#intersectBed -abam ../../allreads_aln_Nc12/2PF.bam -b MSUD_Nc12.bed > 2PF_MSUD_bam
#intersectBed -abam ../../allreads_aln_Nc12/4PF.bam -b MSUD_Nc12.bed > 4PF_MSUD_bam
intersectBed -abam ../../allreads_aln_Nc12/PP.bam -b exons_Nc12.bed > PP_exons_bam
intersectBed -abam ../../allreads_aln_Nc12/2PF.bam -b exons_Nc12.bed > 2PF_exons_bam
intersectBed -abam ../../allreads_aln_Nc12/4PF.bam -b exons_Nc12.bed > 4PF_exons_bam

#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  PP_tRNA_bam -o PP_tRNA_fq
#cat PP_tRNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > PP_tRNA_temp
#perl format.pl PP_tRNA_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  PP_milRNA_bam -o PP_milRNA_fq
#cat PP_milRNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > PP_milRNA_temp
#perl format.pl PP_milRNA_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  PP_snoRNA_bam -o PP_snoRNA_fq
#cat PP_snoRNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > PP_snoRNA_temp
#perl format.pl PP_snoRNA_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  PP_disiRNA_bam -o PP_disiRNA_fq
#cat PP_disiRNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > PP_disiRNA_temp
#perl format.pl PP_disiRNA_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  PP_MSUD_bam -o PP_MSUD_fq
#cat PP_MSUD_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > PP_MSUD_temp
#perl format.pl PP_MSUD_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  PP_rDNA_bam -o PP_rDNA_fq
#cat PP_rDNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > PP_rDNA_temp
#perl format.pl PP_rDNA_temp
/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  PP_exons_bam -o PP_exons_fq
cat PP_exons_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > PP_exons_temp
perl format.pl PP_exons_temp
#rm PP_*

#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  2PF_tRNA_bam -o 2PF_tRNA_fq
#cat 2PF_tRNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 2PF_tRNA_temp
#perl format.pl 2PF_tRNA_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  2PF_milRNA_bam -o 2PF_milRNA_fq
#cat 2PF_milRNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 2PF_milRNA_temp
#perl format.pl 2PF_milRNA_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  2PF_snoRNA_bam -o 2PF_snoRNA_fq
#cat 2PF_snoRNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 2PF_snoRNA_temp
#perl format.pl 2PF_snoRNA_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  2PF_disiRNA_bam -o 2PF_disiRNA_fq
#cat 2PF_disiRNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 2PF_disiRNA_temp
#perl format.pl 2PF_disiRNA_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  2PF_MSUD_bam -o 2PF_MSUD_fq
#cat 2PF_MSUD_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 2PF_MSUD_temp
#perl format.pl 2PF_MSUD_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  2PF_rDNA_bam -o 2PF_rDNA_fq
#cat 2PF_rDNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 2PF_rDNA_temp
#perl format.pl 2PF_rDNA_temp
/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  2PF_exons_bam -o 2PF_exons_fq
cat 2PF_exons_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 2PF_exons_temp
perl format.pl 2PF_exons_temp
#rm 2PF_*

#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  4PF_tRNA_bam -o 4PF_tRNA_fq
#cat 4PF_tRNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 4PF_tRNA_temp
#perl format.pl 4PF_tRNA_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  4PF_milRNA_bam -o 4PF_milRNA_fq
#cat 4PF_milRNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 4PF_milRNA_temp
#perl format.pl 4PF_milRNA_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  4PF_snoRNA_bam -o 4PF_snoRNA_fq
#cat 4PF_snoRNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 4PF_snoRNA_temp
#perl format.pl 4PF_snoRNA_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  4PF_disiRNA_bam -o 4PF_disiRNA_fq
#cat 4PF_disiRNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 4PF_disiRNA_temp
#perl format.pl 4PF_disiRNA_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  4PF_MSUD_bam -o 4PF_MSUD_fq
#cat 4PF_MSUD_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 4PF_MSUD_temp
#perl format.pl 4PF_MSUD_temp
#/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  4PF_rDNA_bam -o 4PF_rDNA_fq
#cat 4PF_rDNA_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 4PF_rDNA_temp
#perl format.pl 4PF_rDNA_temp
/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  4PF_exons_bam -o 4PF_exons_fq
cat 4PF_exons_fq | awk '{if(NR%4==2) print length($1)}' | sort -n | uniq -c > 4PF_exons_temp
perl format.pl 4PF_exons_temp
#rm 4PF_*

