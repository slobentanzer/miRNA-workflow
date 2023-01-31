#!/bin/sh
mkdir flexbar_q

for read in *.fastq.gz
    do
      echo $read
      out=$(echo $read| sed 's/.fastq.gz//')
      
      if [ ! -e flexbar_q/$out.fastq ]; then
        flexbar -r $read -a adapters.fa -q TAIL -qf sanger -qw 4 -min-read-length 16 -n 1 -t flexbar_q/$out
      else
        echo "File exists."
      fi
    done
