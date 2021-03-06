#!/bin/bash

# script to aggregate all of the results at the thread level director up the the cluster level
# they are then moved to the data aggregation directory
BASENAME=$1
us='_'
FULL_PATH='/NOBACKUP/scratch/jc4144/Nachum/Ostrich/cluster/'
for level_1 in $(ls $FULL_PATH);
do
   /apps/wrappers/sge_run --grid_quiet --grid_submit=batch --grid_mem=500M "find $FULL_PATH$level_1/ -name '*$BASENAME*' -exec cat {} + > /user/user1/jc4144/Nachum/Ostrich/AggOutput/$BASENAME$us$level_1.txt"
done

