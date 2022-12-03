#!/usr/bin/env perl

# Change csv file to QQP csv test data format
# Ye Kyaw Thu, LST, NECTEC, Thailand

use strict;
use warnings;
use utf8;

binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");
binmode(STDERR, ":utf8");

open (my $inputFILE,"<:encoding(utf8)", $ARGV[0]) or die "Couldn't open input file $ARGV[0]!, $!\n";

print("\"test_id\",\"paraphrase1\",\"paraphrase2\"\n");

while (!eof($inputFILE)) {
     
    my $line = <$inputFILE>;
    if (($line ne '') & ($line !~ /^ *$/)) {
        chomp($line);
        my ($col1, $col2, $col3) = split(",", $line);
        print("$col1,\"$col2\",\"$col3\"\n");
    }

}

close ($inputFILE);
