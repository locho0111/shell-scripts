#!/bin/bash
SOURCE="/home/ubuntu/source-dir"
DESTINATION="/home/ubuntu/destination-dir"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
# Create backup directory and copy files
mkdir -p $DESTINATION/$DATE
cp -r $SOURCE $DESTINATION/$DATE
echo "Backup completed on $DATE"

# create cronjob
# * * * * * /home/ubuntu/backup.sh