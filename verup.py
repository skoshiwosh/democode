#!/usr/bin/env python
"""
    Copy file argument with version suffix added to basename and save in versions subdirectory.
    
    
    Version: 1.0
    Date: Sept 9, 2018
    Author: Suzanne Berger
    Contact: zanefx7@gmail.com
"""

import sys
import os
import shutil
import glob


def verup(verfile):
    """Create a new version file with version suffix added to basename of input file."""
    
    print("verup: Versioning {}".format(verfile))
    
    # derive versions subdirectory and create if it doesn't already exist
    abspath = os.path.abspath(os.path.dirname(verfile))
    verdir = os.path.join(abspath,'versions')
    if not os.path.exists(verdir):
        os.mkdir(verdir)
        print("verup: Creating %s" % verdir)
    
    # get last version file
    last_verfile = ''
    vfroot, vfext = os.path.splitext(os.path.basename(verfile))
    versions = glob.glob(verdir + '/' + vfroot + '_v[0-9][0-9]' + vfext)
    if versions:
        versions.sort()
        last_verfile = versions[-1]

    if last_verfile:
        last_version = int(last_verfile.split('_v')[-1][:2])
    else:
        last_version = 0

    # create next version suffix string and add to basename of input file
    next_verstr = '_v%02d' % (last_version + 1)
    next_verfile = verdir + '/' + vfroot + next_verstr + vfext

    # copy input file over to next version file under versions subdirectory
    shutil.copy(verfile, next_verfile)
    print("verup: Copyied {0} to {1}".format(verfile, next_verfile))


if __name__ == "__main__":
    
    if len(sys.argv) < 2:
        print("Error: {} is missing file argument".format(sys.argv[0]))
        sys.exit(1)

    verfile = os.path.normpath(sys.argv[1])

    if not os.path.isfile(verfile):
        print("Error: {} invalid file argument: {}".format(sys.argv[0], sys.argv[1]))
        sys.exit(1)

    verup(verfile)

    sys.exit()