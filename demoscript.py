#!/usr/bin/env python
""" Example python script used for teaching.

    File: demoscript.py
    Version: 1.0
    Date: Sept 21, 2020
    Author: Suzanne Berger
    Contact: zanefx7@gmail.com
"""

import sys
import logging


#########################################################
# globals
#########################################################

VERSION = "V02"
logging.basicConfig(level=logging.INFO)
#logging.basicConfig(level=logging.DEBUG)
logging.info("%s Version %s" % (__file__, VERSION))     # this is old-style string formating

logging.debug("__name__ is this: %s" % __name__)
#print("cmp_ints is type ", type(cmp_ints))     # will error because 'cmp_ints' not defined yet

#########################################################
# methods
#########################################################

# this logic demostrates if/elif/else
# same list is also returned by one line statement: list(range(min(arg1,arg2), max(arg1,arg2)+1))
def cmp_ints(arg1, arg2):
    """Return list of numbers between parameters arg1 and arg2 sorted min to max."""
    
    if arg1 > arg2:
        print("cmp_ints: arg1: {} is bigger".format(arg1))
        return list(range(arg2, arg1+1))
    elif arg2 > arg1:
        print("cmp_ints: arg2: {} is bigger".format(arg2))
        return list(range(arg1, arg2+1))
    else:
        print("cmp_ints: arg1: {} and arg2: {} are equal".format(arg1, arg2))
        return [arg1]

logging.debug("cmp_ints is type: {}".format(type(cmp_ints)))      # object type
logging.debug("cmp_ints id is: {}".format(id(cmp_ints)))          # object memory address

# this logic demonstrates while loop
# same list is also returned by list comprehension: [i**2 for i in range(max_int,0,-1)]
def get_powers(max_int):
    """Return list of numbers powered by 2 starting at max_int parameter."""
    
    powers = []                     # start with empty list
    looper = max_int
    while looper > 0:
        this_pow = looper ** 2
        powers.append(this_pow)     # keep adding to list
        looper -= 1                 # until looper is 0
    print("this_pow",this_pow)
    return powers

print("get_powers is type ", type(get_powers))

#########################################################
# main
#########################################################

if __name__ == "__main__":

    print("sys.argv list:", sys.argv)
    if len(sys.argv) < 3:
        logging.error("{} is missing arguments".format(sys.argv[0]))
        sys.exit(1)

    #print("type of second arg",type(sys.argv[1]))
    try:
        i = int(sys.argv[1])
        j = int(sys.argv[2])
    except:
        logging.error("{} arguments '{}' and/or '{}' are not integers".format(sys.argv[0], sys.argv[1], sys.argv[2]))
        sys.exit(1)
        
    range_list = cmp_ints(i, j)
    print(f"length of range_list is: {len(range_list)}\nhere is the list: {range_list}")
    for each in range_list:
        print(each)

    powers = get_powers(max(i, j))      # use built-in max function to pass in max integer
    #print("powers: {}".format(powers))
    print(f"powers: {powers}")

    # exiting and all is good       
    sys.exit()
