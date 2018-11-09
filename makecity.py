#!/usr/bin/env python
import sys
import random

import maya.cmds as cmds

# print(dir(makecity))

# makecity.mkcube("city1_grp", "cube1")
def mkcube(grp_name, cube_name):
    ''' Make cube under group node at origin with dimension 1,1,1 and pivot at origin '''
    new_cube = cmds.polyCube(ax=[0, 1, 0], cuv=4, ch=True, name=cube_name)
    cmds.group(new_cube, name=grp_name)
    nodeattr = "%s.translateY" % new_cube[0]
    cmds.setAttr(nodeattr, 0.5)
    spattr = "%s.scalePivot" % new_cube[0]
    rpattr = "%s.rotatePivot" % new_cube[0]
    cmds.move(0, 0, 0, spattr, rpattr, absolute=True)
    cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0, pn=1 )
    return new_cube[0]


def copygeo(geo=None, numcopy=4, x=3, z=3):
    ''' duplicate geo over grid '''
    
    if not geo:
        sel = cmds.ls(sl=True)
        if len(sel):
            geo = sel[0]
        else:
            print("Select node to copy")
            return

    newgeo = cmds.duplicate(geo)
    allgeo = [geo, newgeo[0]]
    cmds.move(x, 0, 0)
    for each in range(numcopy):
        newgeo = cmds.duplicate(rr=True, st=True)
        allgeo.append(newgeo[0])

    print("allgeo", allgeo)
    cmds.select(allgeo, r=True)
    newgeo = cmds.duplicate()
    allgeo.extend(newgeo)
    print("newgeo", newgeo)
    cmds.move(0, 0, -z, relative=True)
    for each in range(numcopy - 1):
        newgeo = cmds.duplicate(rr=True, st=True)
        print("newgeo", newgeo)
        allgeo.extend(newgeo)

    cmds.select(allgeo, r=True)


def randgeo():
    all_geo = cmds.ls(sl=True)

    for each in all_geo:
        this_scale = (round(random.uniform(0.5, 1.5),3),
                      round(random.uniform(0.5, 2.0), 3),
                      round(random.uniform(0.5, 1.5), 3))
        cmds.scale(this_scale[0], this_scale[1], this_scale[2], each, scaleXYZ=True, absolute=True)
