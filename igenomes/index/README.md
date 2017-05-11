# Index calculations added to iGenomes

Main Scripts
------------
The main scripts identify victims (builds) and call scripts to do the actual calculations.
Note that some paths are hard-coded to what was relevant at the time of the calculation (eg, "raw")
and may no longer be available.
* wrapper.sh - general script to schedule jobs for the requested tool
* runbed.sh - gtf2bed is too fast/simple to run through the general wrapper

Tool scripts
------------
Note that specific software versions are included in these files. These should of course be updated as needed.

* gtf2bed.pl - Copyright (c) 2011 Erik Aronesty (erik@q32.com)
* star\_index.job - includes use of gtf files when available
* bismark\_index.job - builds for both bowtie and bowtie2. Note that Bismark changed its default settings between versions 0.14.0 and 0.14.5.

