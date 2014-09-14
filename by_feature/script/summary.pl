#!/usr/bin/perl -w 
use strict;

#####THis is to summarize all of count under different size of different RNA. files with .leng at different time points should be supply for running####


my @feature = ("exons","snoRNA","rDNA","milRNA","tRNA","disiRNA","MSUD");

print "time point \n";
my $time = <STDIN>;
chomp $time;
my %hash;

print join("\t","Length",$feature[0],$feature[1],$feature[2],$feature[3],$feature[4],$feature[5],$feature[6]), "\n";

foreach my $rna(@feature) {
	my $file = "$time"."\."."$rna"."\."."leng";
#	print $file, "\n";
	open IN, $file or die "$!";
	my @data = <IN>;
	foreach my $data (@data){
	chomp $data;
	my @a = split("\t", $data);
#	print $a[0], "\n";
	$hash{$rna}{$a[0]}=$a[1];
	}
	close IN;
}


for (my $i = 18; $i < 31; $i++){
	print join ("\t", $i,$hash{'exons'}{$i}, $hash{'snoRNA'}{$i},$hash{'rDNA'}{$i}, $hash{'milRNA'}{$i}, $hash{'tRNA'}{$i}, $hash{'disiRNA'}{$i}, $hash{'MSUD'}{$i}), "\n";
}

__END__
foreach my $key (sort keys %hash){
print $key, "\n";
	for (my $i = 18; $i<31; $i++){
	print $hash{$key}{$i};
	}
print "\n";
}

