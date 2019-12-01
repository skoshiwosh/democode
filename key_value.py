#!/bin/env python
import sys
import os
from pprint import pprint

from maya import cmds

def getKeyValues(nodeAttr, startFrame, endFrame):
    keys = cmds.keyframe(nodeAttr, time=(startFrame, endFrame), query=True, valueChange=True, timeChange=True)
    key_values = []
    if keys:
        key_values = [(keys[i], keys[i+1]) for i in range(0,len(keys),2)]
    return key_values

def allKeyValues():
    startFrame = cmds.playbackOptions(q=True,animationStartTime=True)
    endFrame = cmds.playbackOptions(q=True,animationEndTime = True)
    keyval_dict = {}

    anim_list = cmds.ls(type="animCurve")
    attr_list = []
    for each in anim_list:
        node_attrs = cmds.listConnections(each, p=True, s=True)
        attr_list.append(node_attrs[0])

    for nodeAttr in attr_list:
        key_values = getKeyValues(nodeAttr, startFrame, endFrame)
        keyval_dict[nodeAttr] = key_values
    return keyval_dict


if __name__ == '__main__':
    
    try:
        import maya.standalone
        maya.standalone.initialize(name='python')
        isStandalone = True
    except:
        isStandalone = False

    if isStandalone:
        print("Running Maya standalone")
        
        if len(sys.argv) < 2:
            print("Error: Missing input scene file argument")
            sys.exit(1)

        scenefile = sys.argv[1]
        print("Loading input Maya scene file", scenefile)
        try:
            cmds.file(scenefile, iv=True, force=True, open=True)
        except:
            print("Error: Unable to open Maya scene file")
            sys.exit(1)
        
        key_value_dict = allKeyValues()
        pprint(key_value_dict)

    sys.exit(0)