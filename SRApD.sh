#!/bin/bash
mkdir -p ~/$2
for line in $(cat $1) ; do
   echo "Downloading $line"
   ./fastq-dump $line
   mv "$line.fastq" ~/$2/$line.fastq
done
