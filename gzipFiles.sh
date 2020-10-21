#! /bin/sh
TODAY=`date +"%m/%d/%Y"`
echo $TODAY
VAR=$(find ~/workingDir -type f -newermt "$TODAY")
echo $VAR
rm -r ~/workingDir/Dir
mkdir ~/workingDir/Dir
cp -r $VAR ~/workingDir/Dir/
gzip -r ~/workingDir/Dir 
