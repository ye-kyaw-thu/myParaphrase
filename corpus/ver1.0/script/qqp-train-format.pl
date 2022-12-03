#!/usr/bin/env perl

# Change csv file to QQP csv training data format
# Ye Kyaw Thu, LST, NECTEC, Thailand

use strict;
use warnings;
use utf8;

binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");
binmode(STDERR, ":utf8");

open (my $inputFILE,"<:encoding(utf8)", $ARGV[0]) or die "Couldn't open input file $ARGV[0]!, $!\n";

print("\"id\",\"pid1\",\"pid2\",\"paraphrase1\",\"paraphrase2\",\"is_paraphrase\",\n");
my $pid1=1; my $pid2=2;

while (!eof($inputFILE)) {
    
    my $line = <$inputFILE>;
    if (($line ne '') & ($line !~ /^ *$/)) {
        chomp($line);
        my ($col1, $col2, $col3,$col4) = split(",", $line);
        print("\"$col1\",\"$pid1\",\"$pid2\",\"$col2\",\"$col3\",\"$col4\"\n");
        $pid1=$pid1+1; $pid2=$pid2+1;
    }

}

close ($inputFILE);
