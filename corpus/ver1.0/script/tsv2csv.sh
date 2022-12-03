#!/bin/bash
# converting the original tsv file format to csv file format
# run for two test files
# written by Ye Kyaw Thu, Visiting Professor, LST, NECTEC

baseName=`basename "$1"`

cut -f1 $1 > col1.tmp
cut -f2 $1 > col2.tmp
cut -f3 $1 > col3.tmp

paste -d "," col2.tmp col3.tmp col1.tmp > csv.tmp
awk 'BEGIN{i=0} /.*/{printf "%d,% s\n",i,$0; i++}'  csv.tmp > $baseName.csv
rm *.tmp;
