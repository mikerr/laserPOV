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

XOFFSET = 160
YOFFSET = 110

for loop in range (REPS):
  for i in range (len(x)):
	xpos = int(x[i]) + XOFFSET
	ypos = int(y[i]) + YOFFSET
	
	command = "echo 7=" + str(xpos) + ">/dev/servoblaster"
        subprocess.call (command, shell=True)

	command = "echo 0=" + str(ypos) + ">/dev/servoblaster"
        subprocess.call (command, shell=True)

	time.sleep(SPEED)
