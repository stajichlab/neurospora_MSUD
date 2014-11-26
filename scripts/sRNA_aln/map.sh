#PBS -l nodes=1:ppn=8 -q js -N map
module load bowtie2

for file in ../trimmed/*.fq.gz
do
 base=`basename $file .trim_3_filter.fq.gz`
 if [ ! -f $base.bowtie.sam ];
 then
  bowtie2 -p $PBS_NUM_PPN -x ../Nc12/Nc12 --seed 11 --very-sensitive -S $base.bowtie.sam -U $file
 fi
done
