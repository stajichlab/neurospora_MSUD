for file in PP 2PF 4PF 4PF_UCB_2007;
do
curl -C - -O http://fungalgenomes.org/public/neurospora/data/support_files/wang_MSUD_2014/bam/$file.bowtie.bam
curl -C - -O http://fungalgenomes.org/public/neurospora/data/support_files/wang_MSUD_2014/bam/$file.bowtie.bam.bai

done