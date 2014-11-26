#PBS -l nodes=1:ppn=4,mem=32gb -q js -N mergeBAM -j oe

module load java
module load picard

INPUT=`find . -name "SRR0*.bam" -exec echo INPUT={} \; | grep -v merge | perl -p -e 's/\n/ /g'`

java -jar $PICARD/MergeSamFiles.jar $INPUT O=FGSC2489_reseq.merge.bam ASSUME_SORTED=True SO=coordinate USE_THREADING=true CREATE_INDEX=TRUE VALIDATION_STRINGENCY=SILENT MAX_RECORDS_IN_RAM=1000000
