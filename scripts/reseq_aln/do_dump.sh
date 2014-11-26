
module load sratoolkit

for file in SRR*/*.sra
do 
 fastq-dump --split-files --gzip $file
done
