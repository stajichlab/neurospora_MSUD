#!/usr/bin/perl -w
use strict;

print "time point, \n";
my $input = <STDIN>;

my @class = ("tRNA", "milRNA", "snoRNA", "disiRNA", "MSUD", "rDNA", "exons");


#print "RNA class, \n";
#my $RNA = <STDIN>;

chomp $input;
#chomp $RNA;


foreach my $RNA(@class){

print "/rhome/ywang/bam2fastq/bam2fastq-1.1.0/bam2fastq --no-unaligned -f  ",$input,"_",$RNA,"_bam -o ",$input,"_",$RNA,"_fq", "\n";
print "cat $input\_$RNA\_fq | awk '{if(NR%4==2) print length(\$1)}' | sort -n | uniq -c > $input\_$RNA\_temp", "\n";
print "perl format.pl $input\_$RNA\_temp", "\n";
#print "rm $input\_\*", "\n";

}
