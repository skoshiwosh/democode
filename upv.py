#!/usr/bin/env python
'''
    Copy file argument with added version suffix to basename and save in versions subdirectory

    @version: 1.0
    @date: Sept 14, 2011
    @author: suzanne.berger
    @contact: zanefx7@gmail.com
'''

import sys
import os
import glob
import re
import shutil
import argparse

def upv(last, vstr='_v'):
    ''' Return next version string'''
    
    if not last:
        return '%s01' % vstr
        
    next = ''
    p1 = re.compile('%s[0-9][0-9]' % vstr)
    m1 = p1.search(last)
    nv = int(m1.group(0)[-2:]) + 1
    next = '%s%02d' % (vstr, nv)
    return next

if __name__ == "__main__":

    parser = argparse.ArgumentParser(description = 'Version up input verfile and save in versions subdirectory')
    parser.add_argument('-v', '--vstr', action='store', dest='verstr', default='_v', help='optional suffix version string, default is "_v"')
    parser.add_argument('verfile', action='store', help='input file to be copied with version string to versions subdirectory')
    args = parser.parse_args()

    verfile = args.verfile
    if os.path.isfile(verfile):
        abspath = os.path.abspath(os.path.dirname(verfile))
        vf = os.path.basename(verfile)
        vfroot,vfext = os.path.splitext(vf)
    else:
        print("***Error*** Invalid file argument: %s" % verfile)
        parser.print_help()
        sys.exit(1)        
    
    verdir = os.path.join(abspath,'versions')
    if not os.path.exists(verdir):
        os.mkdir(verdir)
        print("Creating %s" % verdir)

    last = ''
    versions = glob.glob(verdir+'/'+vfroot+'%s[0-9][0-9]' % args.verstr + vfext)
    if versions:
        versions.sort()
        last = versions[-1]
        
    next = upv(last, args.verstr)
    vfnext = vfroot + next + vfext
    nextverpath = os.path.join(abspath,'versions',vfnext)
    shutil.copy(verfile,nextverpath)
    print("Copyied %s to %s" % (verfile,nextverpath))
    sys.exit(0)
