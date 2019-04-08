import sys
import os
import re
from pprint import pprint

from PySide2 import QtCore, QtGui, QtWidgets

from maya import cmds

scenePath = '/Users/suzanneberger/Documents/maya/projects/vanarts/scenes/circus_flybird_v05.ma'

def get_next(last_verfile, vstr='_v'):
    """Return next version string after last version file."""
    
    if not last_verfile:
        return '%s01' % vstr
    
    next = ''
    p1 = re.compile('%s[0-9][0-9]' % vstr)
    m1 = p1.search(last_verfile)
    nv = int(m1.group(0)[-2:]) + 1
    next = '%s%02d' % (vstr, nv)
    return next


# flag iv or ignoreVersion to load scenes from lower versions of maya
# flag f or force will not error for unsaved changes
cmds.file(scenePath, iv=True, f=True, open=True)

dir_file = os.path.split(scenePath)
print(dir_file)

next = get_next(dir_file[1])
print(next)

index = dir_file[1].find('_v')
old_str = dir_file[1][index: index+4]
new_file = dir_file[1].replace(old_str, next)
print(new_file)

next_scene = os.path.join(dir_file[0], new_file)
print(next_scene)

# Error: RuntimeError: file <maya console> line 1: A file name cannot be specified with the -save flag.
# To do a SAVE AS use the -rename flag before the save. #

cmds.file(rename=next_scene)
cmds.file(f=True, save=True)

top_dags = cmds.ls(l=True,assemblies=True)
pprint(top_dags)

particle_nodes = cmds.ls(exactType = "particle", absoluteName=True)
pprint(particle_nodes)

# list with full path names
locator_nodes = cmds.ls(exactType = "locator", absoluteName=True, long=True)
print(locator_nodes)

# creater, transform, move pivots to origin, then freeze transform attributes on object
cmds.polySphere()
cmds.setAttr("pSphere1.translateY",1)
cmds.xform(worldSpace=True, pivots=[0,0,0])
cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0, pn=1)

# another way to do transform
spattr = "%s.scalePivot" % new_cube[0]
rpattr = "%s.rotatePivot" % new_cube[0]
cmds.move(0, 0, 0, spattr, rpattr, absolute=True)


#####################################
#
# loaded primitives_03.ma
#
#####################################

this_scene = cmds.file(q=True, sn=True)
print(this_scene)

geo_list = cmds.listRelatives("primitive_grp")
pprint(geo_list)

for each in geo_list:
    shape_list = cmds.listRelatives(each, shapes=True)
    print(shape_list)


all_desc = cmds.listRelatives("primitive_grp", allDescendents=True, fullPath=True)
pprint(all_desc)

cmds.pointPosition( 'nurbsSphereShape1.cv[3]' )

cmds.pointPosition( 'groundShape.vtx[109]')

numverts = cmds.polyEvaluate("groundShape", vertex=True)
print("numverts",numverts)

for vindex in range(30):
    this_point = cmds.pointPosition( 'groundShape.vtx[%d]' % vindex)
    print(vindex, this_point)

"""

ls command

absoluteName(an)
long(l)
cameras(ca)
exactType(et) = string


file command

expandName(exn)
sceneName(sn)

listRelatives

allDescendents(ad)
fullPath(f)

select -r nurbsSphere1.cv[0:6][0:7]

"""