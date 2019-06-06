#!/usr/bin/env python
import sys
import random
import logging
from pprint import pprint

import maya.cmds as cmds

#########################################################
# globals
#########################################################

VERSION = "V03"
logging.basicConfig(level=logging.INFO)
logging.info( "makecity.py Version %s" % VERSION)

random.seed(40)

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
    nodeattr = "%s.translateY" % new_cube[0]
    cmds.setAttr(nodeattr, 0.5)
    cmds.xform(worldSpace=True, pivots=[0,0,0])
    cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0, pn=1)
    cmds.group(new_cube, name=grp_name)
    return new_cube[0]


def mkbldgs(grp_name, cube_name, cylinder_name):
    new_cube = cmds.polyCube(ax=[0, 1, 0], cuv=4, ch=True, name=cube_name)
    new_cylinder = cmds.polyCylinder(ax=[0, 1, 0], cuv=4, ch=True, name=cylinder_name)
    cmds.setAttr("%s.translateY" % new_cube[0], 0.5)
    cmds.setAttr("%s.translateY" % new_cylinder[0], 1.0)
    cmds.xform(new_cube[0], worldSpace=True, pivots=[0,0,0])
    cmds.makeIdentity(new_cube[0], apply=True, t=1, r=1, s=1, n=0, pn=1 )
    cmds.xform(new_cylinder[0], worldSpace=True, pivots=[0,0,0])
    cmds.makeIdentity(new_cylinder[0], apply=True, t=1, r=1, s=1, n=0, pn=1 )
    cmds.group(new_cube[0], new_cylinder[0], name=grp_name)
    return

def copy2grid(bldg_grp, numrows=4, numcols=4, stepx=3, stepz=3, hide=True):
    """ Duplicate geo over grid.
        
        Total number of copies = numrows * numcols.
        
        Args:
        bldg_grp: group node containing geo to be copied
        numrows: number of rows in grid, default = 4
        numcols: number of columns in grid, default = 4
        stepx: x translate step for each geo copy, default = 3
        stepz: z translate step for each geo copy, default = 3
        hide: Booleon to hide original geo after copies completed, default = True
        
        Example:
        newcity = makecity.copy2grid("building_grp")
    """

    points = []
    for i in range(numcols):
        for j in range(numrows):
            x = stepx * i
            z = stepz * j
            points.append((x,0,z))

    bldg_list = cmds.listRelatives(bldg_grp, type="transform")
    allgeo = []
    for xyz in points:
        newgeo = cmds.duplicate(random.choice(bldg_list))
        cmds.move(xyz[0], xyz[1], xyz[2], newgeo[0], absolute=True)
        allgeo.append(newgeo[0])

    city_grp = cmds.group(allgeo, name="city_grp", w=True)
    
    # turn off original geo's visibility if hide is True
    if hide:
        cmds.setAttr("%s.visibility" % bldg_grp, 0)
    return city_grp


####################################################################
#
# copy2vtx ToDo: complete function
#
# test whether geo is nurbs or poly mesh then use one of these code snippets
# to create list of points for duplication like code in copy2grid
#
# vtx_list = cmds.xform('cube0.vtx[*]', q=True, ws=True, t=True)
# vtx_points = zip(*[iter(vtx_list)]*3)
# pprint(vtx_points)
#
# cv_list = cmds.xform('nurbsSphere1.cv[*]', q=True, ws=True, t=True)
# cv_points = zip(*[iter(cv_list)]*3)
# pprint(cv_points)
#
####################################################################

def copy2vtx(bldg_grp, obj, hide=True):
    """ Copy geo under input bldg_grp to vertex or cv points of input obj.
        
        Args:
        bldg_grp: group node containing geo to be copied
        obj: transform or shape node of surface containing vertex or cv points.
             If transform node input, the shape node is derived. 
             Shape must be poly mesh or nurbs.
        hide: Booleon to hide original geo after copies completed, default = True
        
    """
    if cmds.objectType(obj, isType="transform"):
        parent = obj
        obj = cmds.listRelatives(parent)[0]
        logging.info("Derived shape node %s from parent transform %s" % (obj, parent))
    
    if cmds.objectType(obj, isType="nurbsSurface"):
        nodeattr = "%s.cv[*]" % obj
    elif cmds.objectType(obj, isType="mesh"):
        nodeattr = "%s.vtx[*]" % obj
    else:
        logging.error("Cannot build point list because %s is neither nurbs nor poly mesh" % obj)
        return None

    vtxcv_list = cmds.xform(nodeattr, q=True, ws=True, t=True)
    points = zip(*[iter(vtxcv_list)]*3)
    bldg_list = cmds.listRelatives(bldg_grp, type="transform")
    allgeo = []
    for xyz in points:
        newgeo = cmds.duplicate(random.choice(bldg_list))
        cmds.move(xyz[0], xyz[1], xyz[2], newgeo[0], absolute=True)
        allgeo.append(newgeo[0])

    city_grp = cmds.group(allgeo, name="city_grp", w=True)
    
    # turn off original geo's visibility if hide is True
    if hide:
        cmds.setAttr("%s.visibility" % bldg_grp, 0)
    return city_grp


###############################################################################
#
# randgeo ToDo: add optional arguments and functionality
#   - add optional arguments for range values to randomize scale
#   - use hard-coded args in random.uniform as default values to randomize scale
#   - add optional arguments to randomize rotation or do not randomize rotation at all
#
###############################################################################

def randgeo(city_grp = None, randsx=(0.5,1.5), randsy=(0.5,2.0), randsz=(0.5,1.5), randrotate=False):
    """ Randomize scale and rotattion on all geo under group.
        
        Args:
        city_grp: group node containing geo to randomize. If None then get geo from selection.
        randsx, randsy, randsz: optional min/max tuples for random scale
        randrotate: optional True or False to rotate geo, default is False
    """

    if not city_grp:
        allgeo = cmds.ls(sl=True)
    else:
        allgeo = cmds.listRelatives(city_grp, type="transform")
    
    for each in allgeo:
        this_scale = (round(random.uniform(randsx[0],randsx[1]), 3),
                      round(random.uniform(randsy[0],randsy[1]), 3),
                      round(random.uniform(randsz[0],randsz[1]), 3))
        cmds.scale(this_scale[0], this_scale[1], this_scale[2], each, scaleXYZ=True, absolute=True)

        if randrotate:
            this_rotate = (int(random.uniform(-30, 30)),
                           int(random.uniform(-45, 45)),
                           int(random.uniform(-30, 30)))
            cmds.rotate(this_rotate[0], this_rotate[1], this_rotate[2], each, absolute=True)

