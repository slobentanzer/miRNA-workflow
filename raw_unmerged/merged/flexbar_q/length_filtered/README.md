# Sixth step: alignment
Assumes miRExpress installed and its path provided in the script. Execute
`mirexpress.sh` in the `length_filtered` directory to align all fastq files in
the directory. This will create a `mirexpress/results` directory with the
alignment output. The miRExpress options can be adjusted in the script.
Importantly, this requires preprocessed miRNA sequence files for your preferred
miRBase version and referral in the script. The path for the miRExpress
installation and reference files in this example is `~/Programs/miRExpress`;
adjust as needed. See the miRExpress manual for details.