# Fourth step: length filter
If some of your reads are too long for miRExpress or the aligner of your choice,
you can select them using `length_filter.sh`. This script will only retain reads
between the specified lengths (current setting is between 16 and 25).

If your reads are already in the correct length range, you can skip this step.
Continue in the `length_filtered` directory.