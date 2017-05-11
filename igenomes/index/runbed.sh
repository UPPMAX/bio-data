#!/bin/bash -l

IGEN=/sw/data/uppnex/igenomes/raw
TOOL=/sw/data/uppnex/igenomes/z_tools/6
CMD=$TOOL/gtf2bed.pl

for v in `cat $TOOL/victs`
do
    echo $v
    if [ -e $v/genes.gtf ]
    then
	cd $v
        $CMD genes.gtf > genes.bed
	cd $IGEN
fi
done
