#PBS -l nodes=1:ppn=8,mem=16gb -q js -j oe -N sickle
module load sickle

for file in *_1.fastq
do
 base=`basename $file _1.fastq`
 rev=$base"_2.fastq"
 
 sickle pe -t sanger -f $file -r $rev -o $base.1.fq -p $base.2.fq -s $base.single.fq -l 20 -q 20
done
