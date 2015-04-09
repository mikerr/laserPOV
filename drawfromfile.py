#!/usr/bin/python

import subprocess,time

file = open('drawing','r') 

x,y = [], []
for line in file:
    row = line.split()
    x.append(row[0])
    y.append(row[1])

SPEED = 0.04
REPS = 10
for loop in range (REPS):
  for i in range (len(x)):
	
	command = "echo 0=" + str(x[i]) + ">/dev/servoblaster"
        subprocess.call (command, shell=True)
	command = "echo 7=" + str(y[i]) + ">/dev/servoblaster"
        subprocess.call (command, shell=True)
	time.sleep(SPEED)
