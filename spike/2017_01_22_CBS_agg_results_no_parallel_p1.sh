#!/bin/bash

# script to aggregate all of the results at the thread level director up the the cluster level
# they are then moved to the data aggregation directory
BASENAME=$1

FULL_PATH='/NOBACKUP/scratch/jc4144/Nachum/Ostrich/cluster/'

/apps/wrappers/sge_run --grid_quiet --grid_submit=batch --grid_mem=10G "find $FULL_PATH -name '*$BASENAME*' -exec cat {} + > /user/user1/jc4144/Nachum/Ostrich/AggOutput/temp_all_$BASENAME.txt"


