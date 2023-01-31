#!/bin/sh 

for read in *L001_R1_001.fastq.gz
    do
        echo $read
        out=$(echo $read| sed 's/_L001_R1_001.fastq.gz/.fastq.gz/')
        read2=$(echo $read| sed 's/_L001_/_L002_/')
        read3=$(echo $read| sed 's/_L001_/_L003_/')
        read4=$(echo $read| sed 's/_L001_/_L004_/')
        
        if [ ! -e merged/$out ]; then
            cat $read $read2 $read3 $read4 > merged/$out
        
        else
            echo "File exists."
            fi
            done
