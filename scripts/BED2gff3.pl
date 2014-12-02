use strict;
use warnings;
use Getopt::Long;
my ($source,$type,$pref);

GetOptions('s|source:s' => \$source,
	   't|type:s'   => \$type,
	   'p|pref:s'   => \$pref);

if( ! $source || ! $type ) {
    die("need to provide source and type fields for GFF conversion\n");
}
$pref ||= "FEAT";

my $count = 0;
while(<>) {
    next if /^\#/ || /^\s+$/;
    my ($chrom,$start,$end) = split;
    my $strand = '+';
    if( $end < $start ) {
	$strand = '-';
	($start,$end) = ($end,$start);
    }
    print join "\t", $chrom, $source, $type, $start, $end, '.', $strand, '.', 
    sprintf("ID=%s%05d",$pref,$count++), "\n";
}
