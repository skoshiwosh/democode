#!/usr/bin/env python
"""
    Create web page containing images using template from src_html
    
    @version: 1.0
    @date: Feb 2018
    @author: Suzanne Berger
    @contact: zanefx7@gmail.com
"""

import sys
import os.path
import copy
import glob
import logging
from pprint import pprint

import src_html     # template html with token strings to be replaced by input file data

#########################################################
# globals
#########################################################

VERSION = "V01"
logging.basicConfig(level=logging.INFO)
logging.info( " %s Version %s" % (__file__, VERSION))

#########################################################
# methods
#########################################################

def make_html_table(image_list, image_html_file):
    """ Build html table and save to image_html_file. """
    
    ihf = open(image_html_file,'w')
    html_head = src_html.HTML_HEAD
    ihf.write('\n'.join(html_head))

    for each in image_list:
        this_table_row = copy.deepcopy(src_html.HTML_IMAGE)
        src_image = os.path.basename(each[0])
        this_table_row = [l.replace('$IMGFILE',src_image) for l in this_table_row]
        this_table_row = [l.replace('$IMGTITLE',each[1]) for l in this_table_row]
        this_table_row = [l.replace('$WIDTH',each[2]) for l in this_table_row]
        this_table_row = [l.replace('$HEIGHT',each[3]) for l in this_table_row]
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
    
    if len(sys.argv) > 1:
        image_dir = sys.argv[1]
    else:
        logging.error(" Missing Image Directory Argument")
        sys.exit(1)

    image_list = make_list(image_dir)
    pprint(image_list)
    index_html_file = '%s/index.html' % image_dir
    make_html_table(image_list, index_html_file)

    logging.info("\n *** index.html created in Image Directory ***")
    sys.exit(0)

