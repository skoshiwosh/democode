#!/usr/bin/env python
"""
    Create web page containing images using template from src_html.
    
    Version: 1.0
    Date: Feb 2018
    Author: Suzanne Berger
    Contact: zanefx7@gmail.com
"""

import sys
import os.path
import glob
import logging
from pprint import pprint

import src_html     # template html with token strings to be replaced by input file data

#########################################################
# globals
#########################################################

VERSION = "V01"
logging.basicConfig(level=logging.INFO)
logging.info(f" {__file__} Version {VERSION}")

#########################################################
# methods
#########################################################

def make_html_table(image_dir, web_title):
    """ Build html table and save to image_html_file. """

    image_list = make_list(image_dir)
    pprint(image_list)

    index_html_file = '%s/index.html' % image_dir
    ihf = open(index_html_file,'w')
    html_head = src_html.HTML_HEAD

    html_head = [l.replace('$WEBTITLE',web_title) for l in html_head]
    ihf.write('\n'.join(html_head))

    for each in image_list:
        this_table_row = src_html.HTML_IMAGE[:]
        src_image = os.path.basename(each[0])
        width = int(each[2])
        height = int(each[3])
        if width > 1280:
            width /= 2
            height /= 2
        this_table_row = [l.replace('$IMGFILE',src_image) for l in this_table_row]
        this_table_row = [l.replace('$IMGTITLE',each[1]) for l in this_table_row]
        this_table_row = [l.replace('$WIDTH',str(width)) for l in this_table_row]
        this_table_row = [l.replace('$HEIGHT',str(height)) for l in this_table_row]
        ihf.write('\n'.join(this_table_row))
        ihf.write('\n')
    
    html_tail = src_html.HTML_TAIL
    ihf.write('\n'.join(html_tail))
    ihf.close()

def make_list(image_dir):
    """ Returns image data list from input image directory.
        
    The list is then input to make_html_table to build html page.
    """
    image_list = []
    
    images = glob.glob("%s/*.jpg" % image_dir)
    for each in images:
        base_name = os.path.splitext(os.path.basename(each))[0]
        pieces = base_name.split('_')
        res = pieces[-1].split('x')
        title_image_name = "_".join(pieces[:-1])
        image_list.append((each, title_image_name, res[0], res[1]))
    return image_list

#########################################################
# main
#########################################################

if __name__ == '__main__':
    
    if len(sys.argv) > 2:
        image_dir = sys.argv[1]
        web_title = sys.argv[2]
    else:
        logging.error(" Missing 2 Arguments: Image Directory and Web Title")
        sys.exit(1)

    #image_list = make_list(image_dir)
    #pprint(image_list)
    #index_html_file = '%s/index.html' % image_dir
    make_html_table(image_dir, web_title)

    logging.info("\n *** index.html created in Image Directory ***")
    sys.exit(0)
