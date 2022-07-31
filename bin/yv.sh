#!/bin/bash
#utility to download you tube sound videos
# Ask the user for login details echo "Youtube Video Downloader"
echo "--JJ------------------------"
read -p 'Enter DL youtube video: ' uservar
echo "USERVAR IS: ${USERVAR}"

cd /mnt/c/you/new
echo `date` >> /mnt/c/you/dates.txt ' - ' $USERVAR

youtube-dl -f 18 $uservar &
PID=$!
wait $PID

COMP=$(echo "$USERVAR" | rg "=(.*)" -o | sed 's/=//') # COMP=$($USERVAR | rg "=(.*)" -o | sed 's/=//')
echo "COMP is: ${COMP}"
IFS=$'\n'
ps -o cmd= -p $$    
for i in $(find . -name "*$COMP*" );
do
    echo " file name is: $i"
    touch $i
done
unset IFS