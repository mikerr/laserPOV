#!/bin/bash

# 0 min 90 max 120
# 7 min 155 max 155

SPEED=0.3
COUNTER=0
while [  $COUNTER -lt 2 ]; do
	echo "0=95" > /dev/servoblaster
	sleep $SPEED
	echo "7=170" > /dev/servoblaster
	sleep $SPEED
	echo "0=110" > /dev/servoblaster
	sleep $SPEED
	echo "7=155" > /dev/servoblaster
	sleep $SPEED
	let COUNTER=COUNTER+1 
done
SPEED=0.15
COUNTER=0
while [  $COUNTER -lt 10 ]; do
	echo "0=95" > /dev/servoblaster
	sleep $SPEED
	echo "7=170" > /dev/servoblaster
	sleep $SPEED
	echo "0=110" > /dev/servoblaster
	sleep $SPEED
	echo "7=155" > /dev/servoblaster
	sleep $SPEED
	let COUNTER=COUNTER+1 
done
SPEED=0.05
COUNTER=0
while [  $COUNTER -lt 30 ]; do
	echo "0=95" > /dev/servoblaster
	sleep $SPEED
	echo "7=170" > /dev/servoblaster
	sleep $SPEED
	echo "0=110" > /dev/servoblaster
	sleep $SPEED
	echo "7=155" > /dev/servoblaster
	sleep $SPEED
	let COUNTER=COUNTER+1 
done

SPEED=0.02
COUNTER=0
while [  $COUNTER -lt 50 ]; do
	echo "0=95" > /dev/servoblaster
	sleep $SPEED
	echo "7=170" > /dev/servoblaster
	sleep $SPEED
	echo "0=110" > /dev/servoblaster
	sleep $SPEED
	echo "7=155" > /dev/servoblaster
	sleep $SPEED
	let COUNTER=COUNTER+1 
done
