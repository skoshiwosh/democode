#!/usr/bin/env python
import sys
import random
import logging
from pprint import pprint

import maya.cmds as cmds


#########################################################
# globals
#########################################################

VERSION = "V01"
logging.basicConfig(level=logging.INFO)
logging.info( "makecity.py Version %s" % VERSION)


#########################################################
# methods
#########################################################


def mkcube(grp_name, cube_name):
    """ Make cube under group node at origin with dimension 1,1,1 and pivot at origin.
    
    Args:
        grp_name: object name of parent group to contain cube
        cube_name: object name of cube node
        
    Example:
        makecity.mkcube("building_grp", "cube0")
    """
    new_cube = cmds.polyCube(ax=[0, 1, 0], cuv=4, ch=True, name=cube_name)
    cmds.group(new_cube, name=grp_name)
    nodeattr = "%s.translateY" % new_cube[0]
    cmds.setAttr(nodeattr, 0.5)
    #spattr = "%s.scalePivot" % new_cube[0]
    #rpattr = "%s.rotatePivot" % new_cube[0]
    #cmds.move(0, 0, 0, spattr, rpattr, absolute=True)
    cmds.xform(worldSpace=True, pivots=[0,0,0])
    cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0, pn=1 )
    return new_cube[0]

def copy2vtx(bldg_grp, obj):
    pass

def copy2grid(bldg_grp, numrows=4, numcols=4, stepx=3, stepz=3, hide=True):
    """ Duplicate geo over grid. """
    
    points = []
    for i in range(numcols):
        for j in range(numrows):
            x = stepx * i
            z = stepz * j
            points.append((x,0,z))
    pprint(points)

    bldg_list = cmds.listRelatives(bldg_grp, type="transform")
    this_bldg = bldg_list[0]
    allgeo = []
    for xyz in points:
        newgeo = cmds.duplicate(this_bldg)
        cmds.move(xyz[0], xyz[1], xyz[2], newgeo[0], absolute=True)
        allgeo.append(newgeo[0])

    pprint(allgeo)
    city_grp = cmds.group(allgeo, name="city_grp", w=True)

    if hide:
        cmds.setAttr("%s.visibility" % this_bldg, 0)
    return city_grp

def randgeo(city_grp = None):
    
    if not city_grp:
        allgeo = cmds.ls(sl=True)
    else:
        allgeo = cmds.listRelatives(city_grp, type="transform")

    for each in allgeo:
        this_scale = (round(random.uniform(0.5, 1.5),3),
                      round(random.uniform(0.5, 2.0), 3),
                      round(random.uniform(0.5, 1.5), 3))
        cmds.scale(this_scale[0], this_scale[1], this_scale[2], each, scaleXYZ=True, absolute=True)


# old version
def copygeo(geo=None, numcopy=4, x=3, z=3):
    """ Duplicate geo over grid.
        
        Keyword args:
        geo: node name, default of None will then use first node in selection list as input
        numcopy: number of nodes to be copied per row and per column
        x: translation in x-axis of copies
        y: translation in z-axis of copies
    """
    
    if not geo:
        sel = cmds.ls(sl=True)
        if len(sel):
            geo = sel[0]
        else:
            print("Select node to copy")
            return

    print("geo",geo)
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
    return allgeo


