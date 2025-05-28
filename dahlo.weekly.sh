#!/bin/bash
#SBATCH -A uppmax.staff
#SBATCH -p shared
#SBATCH -c 1
#SBATCH -t 01:00:00

### MACHINERY START ###
# Set time delay
#DELAY=10minutes
#DELAY=24hours
DELAY=7days

# Get the full path and dir name of the current script
SCRIPT_PATH=/cfs/klemming/home/m/mdahlo/testarea/scorontab/dahlo.10m.sh
SCRIPT_NAME=$(basename $SCRIPT_PATH)
DIR_PATH=$(dirname $SCRIPT_PATH)

# Create log folders if they are missing
mkdir -p $DIR_PATH/slurm_logs/ $DIR_PATH/logs/

# Schedule next run with Slurm
sbatch  --output=$DIR_PATH/slurm_logs/$SCRIPT_NAME-%j.out \
        --error=$DIR_PATH/slurm_logs/$SCRIPT_NAME-%j.err \
        -J scorontab_$DELAY \
        --begin=now+$DELAY \
        $SCRIPT_PATH

### MACHINERY END ###

### CODE TO BE RUN BELOW ###

# dummy command just to see that it works
echo $(date) >> $DIR_PATH/logs/$SCRIPT_NAME.log

# more realistic examples
# /sw/data/blast_scripts/update_blastdb.sh
# /sw/data/blast_scripts/update_blastdb-uniprot.sh


