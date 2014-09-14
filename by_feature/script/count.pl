#!/usr/bin/perl -w
 use strict;
 
 my $file = shift;
 
 open IN, $file or die "$!";
 
 my $count = 0;
 
 my @data = <IN>;
 
 foreach my$line(@data){
 	chomp $line;
 	my @a = split("\t", $line);
 	$count = $count + $a[3];
# 	print $count, "\n";
 }
print $count, "\n";
