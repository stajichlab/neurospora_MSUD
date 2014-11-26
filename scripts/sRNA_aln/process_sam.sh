#PBS -l nodes=1:ppn=2 -q js -N process_sam -j oe

module load java
module load picard
for file in *.bowtie.sam
do
 base=`basename $file .bowtie.sam`
 if [ ! -f $base.clean.sam ]; then
  java -jar $PICARD/CleanSam.jar I=$file O=$base.clean.sam
 fi
 if [ ! -f $base.bam ]; then
 java -jar $PICARD/AddOrReplaceReadGroups.jar I=$base.clean.sam O=$base.bam RGID=$base RGSM=$base RGLB=$base RGPL=illumina RGPU=smRNA SORT_ORDER=coordinate CREATE_INDEX=TRUE
 fi
done
