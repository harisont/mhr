# Shift-redshift: a simple script I use to set color temperature of display manually, via keyboard shortcuts

#!/usr/bin/python
import re
import sys
import subprocess

arg=sys.argv
if (len(arg)!=2) or (str(arg[1])!="+" and str(arg[1])!="-"):
    print("Parameters: + to increase temperature, - to decrease temperature.")
else:
    cmdout=subprocess.run(["redshift", "-p"], stdout=subprocess.PIPE)
    ints=re.findall('\\d+', cmdout.stdout.decode('utf-8'))
    temp=int(ints[1])
    step=500    # unit
    if (arg[1]=="+" and temp+step<=25000):
        subprocess.run(["redshift", "-O", str(temp+step)])
    elif (arg[1]=="-" and temp-step>=1000):
        subprocess.run(["redshift", "-O", str(temp-step)])
