#!/usr/bin/env python3
"""
    Convert input image to tiff format.
    
    File: tiffit.py
"""

import sys
import os
import argparse
import logging
from pprint import pprint

from PIL import Image

#########################################################
# globals
#########################################################

VERSION = "V01"

logging.basicConfig(level=logging.INFO)
logging.info( " %s Version %s" % (sys.argv[0], VERSION))

#########################################################
# methods
#########################################################

def tiffit(imgfile):
    im = Image.open(imgfile)

    imbase = os.path.splitext(imgfile)[0]
    print(imbase)
    #imtiff = os.path.join(imbase,".tiff")
    imtiff = imbase + ".tiff"
    
    print(f"Saving {imtiff}")
    im.save(imtiff, "TIFF")
    return


#########################################################
# main
#########################################################

if __name__ == "__main__":
    
    parser = argparse.ArgumentParser(description = 'Convert image to tiff')
    parser.add_argument('imgfile', action='store', help='input image file to be converted')
    args = parser.parse_args()
    
    # make sure input file argument is really a file
    # todo: also check that it's an image file
    if not os.path.isfile(args.imgfile):
        logging.error(" Invalid file argument: {}\n".format(args.imgfile))
        parser.print_help()
        sys.exit(1)

    tiffit(args.imgfile)

    sys.exit(0)
