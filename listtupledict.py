#!/usr/bin/env python
"""
    Demo of lists, tuples and dictionaries used for teaching.
"""

import sys
from pprint import pprint

print("__name__ is set to:", __name__)


def getscn():

    # create integers and list of integers 
    num1 = 5
    num2 = 2
    num3 = -3
    num4 = 0
    print("\nnum1 = {} and is type: {}".format(num1, type(num1)))

    all_nums = [num1, num2, num3, num4]
    print("all_nums = {} and is type: {}\n".format(all_nums, type(all_nums)))

    # create floats that represent x,y,z vertex components and
    # tuple representing a vertex point
    x_vtx = 2.71
    y_vtx = -8.33
    z_vtx = 5.20
    print("x_vtx = {} and is of type: {}".format(x_vtx, type(x_vtx)))

    point1 = (x_vtx, y_vtx, z_vtx)
    print("point1 = {} and is type: {}\n".format(point1, type(point1)))

    # create other vertex point tuples and list of these tuples 
    point2 = (x_vtx * 2.5, y_vtx, z_vtx * -1)
    point3 = (0.0, 0.0, z_vtx)
    point4 = (0.0, y_vtx * 5, z_vtx)
    all_points = [point1, point2, point3, point4]
    print("all_points = {}\n".format(all_points))

    # create strings representing node groups 
    grp1 = "char_grp"
    grp2 = "bldg_grp"
    grp3 = "env_grp"
    print("grp1 = {} and is type: {}\n".format(grp1, type(grp1)))

    # create dictionary containing group node names as keys
    # with values equal to a list of group components and
    # their vertex positions
    scene = {}
    scene[grp1] = [("rat", point1),
                   ("dog", point2),
                   ("cat", point3),
                   ("bear", point4)]
    scene[grp2] = [("library", point1), ("court", point4)]
    scene[grp3] = [("trees", point3)]

    return scene

if __name__ == "__main__":

    this_scene = getscn()
    print("scene dictionary")
    pprint(this_scene)
    
    sys.exit()

      

