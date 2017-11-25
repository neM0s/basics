#!/bin/bash
#script to remove oldest backup


cd /backup || exit 2

#remove the oldest backup, let's keep 100 backups

if [ "$(ls -d 20*-*| wc -l)" -gt 100 ] ; then
    rm -r $(ls -d 20*-*| sort | head -1)
fi
