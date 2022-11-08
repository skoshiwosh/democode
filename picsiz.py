#!/usr/bin/env python3
"""
    Get image size info and resize.
    
    File: picsiz.py
"""

import sys
import os
import glob
import json
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

def mkjson(imgdir):
    imfiles = glob.glob("{}/*.jpg".format(imgdir))
    pprint(imfiles)
    imdict = {}
    for i in range(len(imfiles)):
        this_image = imfiles[i]
        im = Image.open(this_image)
        width, height = im.size
        imdict["noname{0:02d}".format(i+1)] = (this_image,width,height)

    json_file = "{}/submitart.json".format(imgdir)
    json_fileobj = open(json_file, 'w')
    json.dump(imdict, json_fileobj, indent=4)
    json_fileobj.close()
    pprint(imdict)
    return


def doResize(imgfile, width, height):
    im = Image.open(imgfile)
    old_width, old_height = im.size
    print("{} Width: {}  Height: {} in pixels".format(imgfile,old_width,old_height))
    
    if width > 0 and height > 0:
        print("Resizing image to new width: {} and height: {}".format(width, height))
        wpix = 300 * width
        hpix = 300 * height
        newim = im.resize((wpix,hpix),Image.LANCZOS)
        #newim = im.resize((wpix,hpix))
        
        imdir = os.path.dirname(imgfile)
        imext = os.path.splitext(imgfile)[1]
        print("imext",imext)
        newimagefile = os.path.join(imdir,"resized_{}x{}.jpg".format(width,height))
        print("newimagefile: ",newimagefile)
        newim.save(newimagefile)
    return


#########################################################
# main
#########################################################

if __name__ == "__main__":
    
    parser = argparse.ArgumentParser(description = 'Resize image file')
    parser.add_argument('imgfile', action='store', help='input image file to be resized')
    parser.add_argument('-wi', '--width', type=int, action='store', dest='width', default=0, help='new width in inches')
    parser.add_argument('-hi', '--height', type=int, action='store', dest='height', default=0, help='new height in inches')
    args = parser.parse_args()
    
    # make sure input file argument is really a file
    # todo: also check that it's an image file
    if not os.path.isfile(args.imgfile):
        logging.error(" Invalid file argument: {}\n".format(args.imgfile))
        parser.print_help()
        sys.exit(1)

    doResize(args.imgfile, args.width, args.height)

    sys.exit(0)
