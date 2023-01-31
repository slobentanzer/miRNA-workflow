#!/bin/sh
mkdir fastqc

for read in *.fastq
    do
        echo $read
        lock=$(echo $read| sed 's/.fastq//')
        html=$(echo $read| sed 's/.fastq/_fastqc.html/')
        if [ ! -e fastqc/$lock ] && [ ! -e fastqc/$html ]; then
            touch fastqc/$lock
            fastqc $read -o fastqc
            rm fastqc/$lock
            else
                echo "File exists."
                fi
                done
