#!/usr/bin/env python
"""
    Copy input file argument to file with version suffix added to basename and save in versions subdirectory.

    Version: 1.0
    Date: Sept 14, 2011
    Author: Suzanne Berger
    Contact: zanefx7@gmail.com
"""

import sys
import os
import glob
import shutil
import argparse
import logging

#########################################################
# globals
#########################################################

VERSION = "V02"

#logging.basicConfig(level=logging.INFO)
logging.basicConfig(level=logging.DEBUG)
logging.info(f" {sys.argv[0]} Version {VERSION}")

#########################################################
# methods
#########################################################

def get_last(verdir, vfroot, vfext, vstr='_v'):
    """Return last version of file under 'versions' subdirectory."""
    
    last_verfile = ''
    versions = glob.glob(verdir+'/'+vfroot+'%s[0-9][0-9]' % vstr + vfext)
    #versions = glob.glob(verdir+'/'+vfroot+vstr+f'{vfext:[0-9][0-9]}')   #not sure how to format string search 
    if versions:
        versions.sort()
        last_verfile = versions[-1]
    return last_verfile


def get_next(last_verfile, vstr='_v'):
    """Return next version string after last version file."""
    
    if not last_verfile:
        return f"{vstr}01"
    
    vstr_index = last_verfile.rfind(vstr)
    i = len(vstr)

    logging.debug(f" last_verfile: {last_verfile}")
    logging.debug(f" vstr_index: {vstr_index}, i: {i}")

    nv = int(last_verfile[vstr_index+i:vstr_index+i+2]) + 1
    next = f"{vstr}{nv:02d}"
    return next


def upv(verfile, vstr='_v'):
    """Create a new version file with version suffix added to basename of input file."""

    # derive versions subdirectory and create if it doesn't already exist
    abspath = os.path.abspath(os.path.dirname(verfile))
    verdir = os.path.join(abspath,'versions')
    if not os.path.exists(verdir):
        os.mkdir(verdir)
        logging.info(f" Creating {verdir}")

    vfroot, vfext = os.path.splitext(os.path.basename(verfile))

    # get last version filename, then create new version file with 1 added to version suffix
    last_verfile = get_last(verdir, vfroot, vfext, vstr)
    next = get_next(last_verfile, vstr)
    #vfnext = vfroot + next + vfext
    vfnext = f"{vfroot}{next}{vfext}"
    nextverpath = os.path.join(abspath,'versions',vfnext)

    # copy the input file to new version file under versions subdirectory
    shutil.copy(verfile, nextverpath)
    logging.info(f" Copyied {verfile} to {nextverpath}")
    return


#########################################################
# main
#########################################################

if __name__ == "__main__":
    # parse arguments
    parser = argparse.ArgumentParser(description = 'Version up input file and save in versions subdirectory')
    parser.add_argument('-v', '--vstr', action='store', dest='verstr', default='_v', help='optional suffix version string, default is "_v"')
    parser.add_argument('verfile', action='store', help='input file to be copied with version string to versions subdirectory')
    args = parser.parse_args()

    logging.debug(f" args: {args}")

    # make sure input file argument is really a file
    if not os.path.isfile(args.verfile):
        logging.error(f" Invalid file argument: {args.verfile}\n")
        parser.print_help()
        sys.exit(1)        

    upv(args.verfile, args.verstr)

    sys.exit(0)
