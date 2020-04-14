#!/usr/bin/env python
'''
Maya Scene Utilities

@version: 1.0
@date: Feb 2012
@authors: Suzanne Berger
@contact: zanefx7@gmail.com
'''

import sys
import os

from maya import cmds,mel

def getSelNode():
    '''return first selected node in selection list'''
    sel = cmds.ls(sl=True)
    if len(sel):
        return sel[0]
    else:
        return ''
        
def getAllSel():
    '''return all selected nodes'''
    return cmds.ls(sl=True)
          
def getTopNodes():
    '''return list of top dag nodes'''
    top_nodes = cmds.ls(l=True,assemblies=True)
    return top_nodes
    
def getTransformNodes():
    '''return list of transform nodes'''
    transform_nodes = cmds.ls(l=True,transforms=True)
    return transform_nodes   

def getPlayStartEnd(zoom=False):
    '''return playbar start end'''
    startFrame = endFrame = 0
    if zoom:
        startFrame = cmds.playbackOptions(q=True,minTime=True)
        endFrame = cmds.playbackOptions(q=True,maxTime=True)
    else:
        startFrame = cmds.playbackOptions(q=True,animationStartTime=True)
        endFrame = cmds.playbackOptions(q=True,animationEndTime = True)
    return startFrame,endFrame

def getKeyValues(nodeAttr, startFrame=None, endFrame=None):
    key_values = []
    if not startFrame:
        startFrame = cmds.playbackOptions(q=True,animationStartTime=True)
    if not endFrame:
        endFrame = cmds.playbackOptions(q=True,animationEndTime=True)

    if endFrame < startFrame:
        print("Error: endFrame {} is less than startFrame {}".format(endFrame, startFrame))
        return key_values

    keys = cmds.keyframe(nodeAttr, time=(startFrame, endFrame), query=True, valueChange=True, timeChange=True)
    if keys:
        key_values = [(keys[i], keys[i+1]) for i in range(0,len(keys),2)]
    return key_values


def getUnits(utype):
    ''' return unit settings for linear or angle type '''
    if utype == 'linear':
        return cmds.currentUnit( query=True, fullName=True, linear=True )
    elif utype == 'angle':
        return cmds.currentUnit( query=True, fullName=True, angle=True )
        
def setPlayStartEnd(start, end):
    '''return playbar start end'''
    cmds.playbackOptions(minTime=start,maxTime=end,ast=start,aet=end)
    return

def getFps():
    '''return fps'''
    fps = mel.eval('currentTimeUnitToFPS;')
    #fps = 30.0
    return fps


def getAnimChannels(nodeName,include=None):
    ''' return list of input node attributes that are keyable '''
    if not cmds.objExists(nodeName):
        return []
    
    animChannels = []
    if include:
        if 'custom' in include:
            animChannels = cmds.listAttr(nodeName, userDefined=True, scalarAndArray=True, keyable=True)
            if len(include) == 1:
                return animChannels
            else:
                include.remove('custom')            
        trsChannels = cmds.listAttr(nodeName,st=include)
        if trsChannels and animChannels:
            animChannels.extend(trsChannels)
        elif trsChannels:
            animChannels = trsChannels
    else:
        animChannels = cmds.listAttr(nodeName, scalarAndArray=True, keyable=True)
    return animChannels     
    
def getAnimData(nodeName, animChannels, frame):
    ''' return list of attribute values at input frame '''
    animData = []
    for each in animChannels:
        objAttr = '%s.%s' % (nodeName,each)        
        data = cmds.getAttr(objAttr,time=frame)             
        data = round(data,8)
        dataStr = '%.8f' % data    
        animData.append(dataStr)    
    return animData

    
def getMayaScenes(mayaScenePath):
    ''' return a list of maya scenes under path argument '''
    mayaScenes = []
    if os.path.isdir(mayaScenePath):
        allFiles = os.listdir(mayaScenePath)
        for each in allFiles:
            if each.endswith('.mb') or each.endswith('ma'):
                mayaScenes.append(os.path.join(mayaScenePath,each))
    elif os.path.isfile(mayaScenePath):
        if mayaScenePath.endswith('.mb') or mayaScenePath.endswith('ma'):
            mayaScenes = [mayaScenePath]
    return mayaScenes

def getSceneFile():
    ''' return name of open scene '''
    return cmds.file(q=True,sn=True)
     
def openScene(scenePath):
    ''' open maya scene path '''
    try:        
        cmds.file(scenePath, iv=True, force=True, open=True)
        return True
    except:
        return False
        
def mergeScene(scenePath, namespace = None):
    ''' merge maya scene path '''
    if not namespace:
        namespace = os.path.splitext(os.path.basename(scenePath))[0]
    try:        
        cmds.file(scenePath, iv=True, i=True, namespace=namespace)
        return True
    except:
        return False

def exportfbx(exportnodes=None):
    ''' export maya scene to fbx '''
    scenePath = cmds.file(q=True,sceneName=True)
    fbxScenePath = os.path.splitext(scenePath)[0]+'.fbx'
    
    if exportnodes:
        cmds.select(exportnodes)
        selectedlist = cmds.ls(sl=True)
        print("Exporting nodes ",selectedlist)
        FBXExportcmd = 'FBXExport -s -f "%s"' % fbxScenePath
    else:
        FBXExportcmd = 'FBXExport -f "%s"' % fbxScenePath
        
    try:
        mel.eval(FBXExportcmd)
    except:
        return None
        
    return fbxScenePath

def isStandalone():
    ''' return True if maya running in non-gui batch mode '''
    try:
        import maya.standalone
        maya.standalone.initialize(name='python')
        return True
    except:
        return False

