#PBS -l nodes=1:ppn=8 -q js -N map -j oe 
module load bwa/0.7.9

module load java
module load picard

for file in ../trimmed/*.fq.gz
do
 base=`basename $file .trim_3_filter.fq.gz`
 if [ ! -f $base.bwa.sam ];
 then
  bwa aln ../Nc12/Nc12.bwa_79 $file -q -t $PBS_NUM_PPN -f $base.bwa.sai -l 11 -B 21 -k 2 -Y
  bwa samse -f $base.bwa.sam ../Nc12/Nc12.bwa_79 $base.bwa.sai $file
 fi
 if [ ! -f $base.bwa.bam ]; then
  java -jar $PICARD/SortSam.jar I=$base.bwa.sam O=$base.bwa.bam CREATE_INDEX=True SO=coordinate
  ln -s $base.bwa.bai $base.bwa.bam.bai
 fi
done
