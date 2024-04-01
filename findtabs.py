#!/usr/bin/env python
"""
    Look for hard-tabs, '\t', in python scripts.

    I created this script when I worked at a visual effects studio with
    no previous pipeline support. Many artists, who had no training in
    python development, created scripts with hard-tabs. I decided I should
    first correct all python scripts in pipeline to standard indentation of
    4-space soft tab. The most difficult python debugging I have experienced
    is when I modified inherited python scripts with mixed indentation styles.

    File: findtabs.py
    Date: April, 2016
    Author: Suzanne Berger
    Contact: zanefx7@gmail.com
"""

import sys
import os
import logging

#########################################################
# globals
#########################################################

VERSION = "V01"
#logging.basicConfig(level=logging.INFO)
logging.basicConfig(level=logging.DEBUG)
logging.info(f"{__file__} Version {VERSION}")

logging.debug(f"$$$ {__name__} $$$")
#########################################################
# methods
#########################################################

def findtabinfiles(dirname,allfiles):
    """
        Search files for '\t' and print first line found.
    """
    for each in allfiles:
        filepath = os.path.join(dirname,each)
        fileobject = open(filepath,'r')
        all_lines = fileobject.readlines()
        for i in range(len(all_lines)):
            each = all_lines[i]
            if '\t' in each and len(each) > 3:
                #print("*** hard tab *** line",i+1,filepath)
                logging.info(f"*** hard tab *** line {i+1} in {filepath}")
                break
    return

def findtabs(topdir,skipversions = False):
    """
        Make list of python files then search each for hard-tab.
    """
    # search tree of directories and files
    for root,dirs,files in os.walk(topdir):
        if skipversions and os.path.split(root)[-1] == 'versions':
            logging.info(f"skipping versions under {root}")
            continue
        # get list of python files then call findtabinfiles
        #print(f"root dir is: {root}")
        logging.debug(f"root dir is: {root}")
        pyfiles = [each for each in files if os.path.splitext(each)[-1] == '.py']
        if pyfiles:
            findtabinfiles(root,pyfiles)
    return

#########################################################
# main
#########################################################

if __name__ == "__main__":
    #print(sys.argv)
    logging.debug(sys.argv)
    if len(sys.argv) > 1:
        topdir = os.path.abspath(sys.argv[1])
    else:
        topdir = os.path.abspath(os.getcwd())

    print("Path argument is: {}".format(topdir))
    findtabs(topdir,True)

    sys.exit()
    
