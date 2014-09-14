#!/usr/bin/perl -w 
use strict;

my $file = shift;

open IN, $file or die"$!";

my @name = split('_', $file);
my $output = join(".", $name[0], $name[1],"leng");

my @data = <IN>;

open OUT, ">>$output" or die "$!";

foreach my $line(@data) {
	chomp $line;
	my @a = split(" ", $line);
	if (($a[1] > 17) && ($a[1] < 31)){
	print OUT join("\t", $a[1], $a[0]), "\n";
	}
}

close OUT;

 
