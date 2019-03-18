#!/usr/bin/env python
"""
    Look for hard-tabs in python scripts
"""

import sys
import os

def findtabinfiles(dirname,allfiles):
    for each in allfiles:
        filepath = os.path.join(dirname,each)
        fileobject = open(filepath,'r')
        all_lines = fileobject.readlines()
        for i in range(len(all_lines)):
            each = all_lines[i]
            if '\t' in each and len(each) > 3:
                print "*** hard tab *** line",i+1,filepath
                break

def findtabs(topdir,skipversions = False):
    for root,dirs,files in os.walk(topdir):
        if skipversions and os.path.split(root)[-1] == 'versions':
            print("skipping versions under", root)
            continue
        pyfiles = []
        pyfiles = [each for each in files if os.path.splitext(each)[-1] == '.py']
        if pyfiles:
            findtabinfiles(root,pyfiles)

    return

if __name__ == "__main__":
    if len(sys.argv) > 1:
        topdir = sys.argv[1]
    else:
        topdir = os.getcwd()

    findtabs(topdir,True)

