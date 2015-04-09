#!/bin/bash

# 0 min 90 max 120
# 7 min 155 max 155

SPEED=0.05
COUNTER=0

LEFT="7=170"
RIGHT="7=155"

TOP="0=95"
MID1="0=100"
MID2="0=105"
MID3="0=110"
BOTTOM="0=115"

#1 = TopLeft down 
#2 = TopLeft right left&down right
#3 = TopLeft right&down left&down right&down left&down
#4 = TopRight left&down right down 
#5 = TopRight left&down right&down left&down
#6 = Topleftt down&down right up&left

while [  $COUNTER -lt 100 ]; do
# top left
	sleep $SPEED
	echo $LEFT > /dev/servoblaster # x 
	echo $TOP > /dev/servoblaster # y
# right
# down
	sleep $SPEED
	echo $RIGHT > /dev/servoblaster
	echo $MID1 > /dev/servoblaster 
# left
# down
	sleep $SPEED
	echo $LEFT > /dev/servoblaster  
	echo $MID2 > /dev/servoblaster 
#right
	sleep $SPEED
	echo $RIGHT > /dev/servoblaster
	echo $MID3 > /dev/servoblaster 
#left
#bottom
	sleep $SPEED
	echo $LEFT > /dev/servoblaster  
	echo $BOTTOM > /dev/servoblaster

	let COUNTER=COUNTER+1 
done
