#PBS -l nodes=1:ppn=16,mem=16gb -q js -N bwa -j oe

module load bwa/0.7.9
module load picard
module load java

if [ ! $PBS_PPN ]; then 
  PBS_PPN=1
fi

if [ ! $PBS_ARRAYID ]; then
 PBS_ARRAYID=$1
fi

if [ ! $PBS_ARRAYID ]; then
 echo "Need an arrayid or via cmdline"
 exit
fi
len=`wc -l list | awk '{print $1}'`
if [ "$PBS_ARRAYID" -gt "$len" ]; then
  echo "ID too large: $PBS_ARRAYID larger than $len"
  exit
fi
base=`head -n $PBS_ARRAYID list | tail -n 1`
fwd=$base"_1.fastq"
rev=$base"_2.fastq"

echo "$base -> $fwd $rev"
if [ ! -f $base.1.sai ]; then
 bwa aln -t $PBS_PPN -q 10 -f $base.1.sai ../Nc12/Nc12.bwa_79 $fwd
fi

if [ ! -f $base.2.sai ]; then 
 bwa aln -t $PBS_PPN -q 10 -f $base.2.sai ../Nc12/Nc12.bwa_79 $rev
fi

if [ ! -f $base.sam ]; then
 bwa sampe -f $base.sam ../Nc12/Nc12.bwa_79 $base.1.sai $base.2.sai $fwd $rev
fi

if [ ! -f $base.bam ]; then
 java -jar $PICARD/SortSam.jar I=$base.sam O=$base.bam SO=coordinate CREATE_INDEX=TRUE VALIDATION_STRINGENCY=SILENT
fi
