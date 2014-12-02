#PBS -l nodes=1:ppn=1,mem=2gb -N bam2BW -j oe

module load bedtools
module load kentsrc
GENOME=../Nc12/Nc12.bedtools_genome.dat
for file in bam/*.bowtie.bam
do
 base=`basename $file .bam`
 if [ ! -f bw/$base.bg ]; then
  bedtools genomecov -bg -ibam $file -g $GENOME > bw/$base.bg
 fi
 if [ ! -f bw/$base.bw ]; then
  bedGraphToBigWig bw/$base.bg $GENOME bw/$base.bw
 fi
done
