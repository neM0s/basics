#!/bin/bash
#basic array

#Check if directory strin is non-zero
#(if it is, user pressed enter as first action)

if [ -n "$Directory" ]
    #Process user input, then prompt again
    while test -n "$DIRECTORY"; do
        TOBACKUP[$counter]="$DIRECTORY"
        ((counter++))
        DIRECTORY=""
        read DIRECTORY
    done
fi

#Back up the directories entered by user
for i in ${TOBACKUP[@]}
do
    echo -e "\nBacking up $i to /backup"
    rsync -av --no-whole-file "$i" /backup
done

#the same, a bit more complicated:
#for ((i=0,i<${#TOBACKUP[@]};i++}}
#do
#echo -e "\nBacking up ${TOBACKUP[$i]} to /backup"
#rsync -av --no-whoe-file "${TOBACKUP[$i]}" /backup
#done
