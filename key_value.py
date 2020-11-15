#!/bin/env python
"""
    Return dictionary with list of key/value tuples assigned to animated attributes as keys.
    
    File: keyvalue.py
    Version: 2.0
    Date: Oct 18, 2019
    Author: Suzanne Berger
    Contact: zanefx7@gmail.com
"""

import sys
import os
import logging
import json
from pprint import pprint

from maya import cmds

#########################################################
# globals
#########################################################

VERSION = "V02"
logging.basicConfig(level=logging.INFO)
logging.info("%s Version %s" % (__file__,VERSION))

#########################################################
# methods
#########################################################

def getKeyValues(nodeAttr, startFrame, endFrame):
    keys = cmds.keyframe(nodeAttr, time=(startFrame, endFrame), query=True, valueChange=True, timeChange=True)
    #print(nodeAttr)
    #pprint(keys)
    #key_values = []
    if keys:
        key_values = [(keys[i], keys[i+1]) for i in range(0,len(keys),2)]
    return key_values

def allKeyValues(jsonit=False):
    startFrame = cmds.playbackOptions(q=True,animationStartTime=True)
    endFrame = cmds.playbackOptions(q=True,animationEndTime = True)
    keyval_dict = {}

    anim_list = cmds.ls(type="animCurve")
    attr_list = []
    for each in anim_list:
        node_attrs = cmds.listConnections(each, plugs=True, source=True)
        attr_list.append(node_attrs[0])

    for nodeAttr in attr_list:
        key_values = getKeyValues(nodeAttr, startFrame, endFrame)
        keyval_dict[nodeAttr] = key_values

    if jsonit:
        this_scene = cmds.file(q=True, sn=True)
        json_file = "{}_animdata.json".format(os.path.splitext(this_scene)[0])
        json_fileobj = open(json_file, 'w')
        json.dump(keyval_dict, json_fileobj, indent=4)
        json_fileobj.close()
        logging.info("Saved animation data to file: %s" % json_file)
    
    return keyval_dict


#########################################################
# main
#########################################################

if __name__ == '__main__':
    
    try:
        import maya.standalone
        maya.standalone.initialize(name='python')
        isStandalone = True
    except:
        isStandalone = False

    if isStandalone:
        logging.info("Running Maya standalone")
        
        if len(sys.argv) < 2:
            logging.error("Missing input scene file argument")
            sys.exit(1)

        scenefile = sys.argv[1]
        logging.info("Loading input Maya scene file %s" % scenefile)
        try:
            cmds.file(scenefile, iv=True, force=True, open=True)
        except:
            logging.error("Unable to open Maya scene file %s" % scenefile)
            sys.exit(1)

        # Todo: use argparse and add option for saving key_value_dict to json
        if len(sys.argv) > 2:
            key_value_dict = allKeyValues(jsonit=True)
        else:
            key_value_dict = allKeyValues()
        pprint(key_value_dict)

    sys.exit(0)
