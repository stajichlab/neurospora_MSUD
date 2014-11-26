#!/usr/bin/perl -w
use Getopt::Long;
my $ascp = '/opt/aspera/3.3.3/bin/ascp';
my $key = '/opt/aspera/3.3.3/etc/asperaweb_id_dsa.openssh';

my $base = 'anonftp@ftp-private.ncbi.nlm.nih.gov:/sra/sra-instant/reads/ByRun/sra/';
GetOptions(
    'ascp:s' => \$ascp,
    'key:s'  => \$key,
    );

my $file = shift || die "need an inputp file";

open(my $fh => $file) || die "$file: $!"; 
my $header = <$fh>;
chomp($header);
my @row = split(/\t/,$header);
while(<$fh>) {
    chomp;
    my ($study,$symbol,$name,$strain) = split(/\t/,$_);
    my ($pref1) = substr($study,0,3);
    my ($pref2) = substr($study,0,6);
    my $url = sprintf("%s/%s/%s/%s",$base,$pref1,$pref2,$study);
    
    print "$ascp -i $key -k 1 -l 300M -QTr $url ./\n";
#    print "ln -s $study FGSC$strain\_$symbol\n";
}
