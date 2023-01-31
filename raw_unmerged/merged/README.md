# Second step: quality control with fastQC
Assumes FastQC CLI installed and on path. Execute `fastqc.sh` in the `merged`
directory to run FastQC on all fastq files in the directory. This will create
a `fastqc` directory with the FastQC output.

# Third step: trim adapters
Assumes flexbar CLI installed and on path. Execute `flexbar.sh` in the `merged`
directory to trim adapters from all fastq files in the directory. This will
create a `flexbar_q` directory with the trimmed fastq files. The adapter
sequence(s) can be provided to flexbar in the `adapters.fa` file. Flexbar has
many options; see the manual for details and adjust according to your needs.

Continue in the `flexbar_q` directory.