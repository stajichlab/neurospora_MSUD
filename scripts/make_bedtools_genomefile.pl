#!/usr/bin/perl 
use strict;
use warnings;

open(my $idx => "Nc12/neurospora_crassa_or74a_12_supercontigs.fasta.fai") || die "cannot open Nc12/neurospora_crassa_or74a_12_supercontigs.fasta.fai, did you run samtools faidx Nc12/neurospora_crassa_or74a_12_supercontigs.fasta already?\n";
open(my $out => ">Nc12/Nc12.bedtools_genome.dat") || die $!;
while(<$idx>) {
    my ($chrom,$len) = split;
    print $out join("\t", $chrom, $len), "\n";    
}
