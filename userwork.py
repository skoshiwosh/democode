#!/usr/bin/env python
"""
    Create homework subdirectory ending with USERNAME environment variable
"""

import sys
import os

ROOTDIR = r'A:\GADMarch2018\aTerm3\IntroToPython\work'

username = os.environ['USERNAME']
userdir = os.path.normpath(os.path.join(ROOTDIR, username))

if os.path.exists(userdir):
    print("%s already exists" % userdir)
else:
    os.mkdir(userdir)
    print("Created %s" % userdir)

sys.exit()
