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
