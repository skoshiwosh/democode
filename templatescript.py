#!/usr/bin/env python
"""
    Example template python script.
    
    File: templatescript.py
    Version: 1.0
    Date: Sept 24, 2019
    Author: Suzanne Berger
    Contact: zanefx7@gmail.com
"""

import sys

print("__name__", __name__)

def func1(arg1, arg2=0):
    print("func1: arg1 = {}, arg2 = {}".format(arg1, arg2))


def main(args=[]):
    print("Argument list is: {}".format(args))
    if not args:
        func1(0)
    elif len(args) > 1:
        func1(args[0], args[1])
    else:
        func1(args[0])



if __name__ == "__main__":

    main(sys.argv[1:])

    sys.exit()
