#!/bin/bash -l

CMD=$1
TOOL=/sw/data/uppnex/igenomes/z_tools/6
IGEN=/sw/data/uppnex/igenomes/raw
cd $IGEN

for v in [[:upper:]]*/*/*
do
    echo $v
    cd $TOOL
    sbatch $CMD $v
    #./$CMD $v
    cd $IGEN
    sleep 1
done
