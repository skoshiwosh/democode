#!/usr/bin/env python
"""   Example python script used for teaching. """

import sys
import logging


#########################################################
# globals
#########################################################

VERSION = "V02"
logging.basicConfig(level=logging.INFO)
logging.info("%s Version %s" % (__file__, VERSION))

print("__name__ is this: %s" % __name__)
#print("cmp_ints is type ", type(cmp_ints))     # will error because 'cmp_ints' not defined yet

#########################################################
# methods
#########################################################

def cmp_ints(arg1, arg2):
    if arg1 > arg2:
        print("cmp_ints: arg1: {} is bigger".format(arg1))
        return range(arg2, arg1)
    elif arg2 > arg1:
        print("cmp_ints: arg2: {} is bigger".format(arg2))
        return range(arg1, arg2)
    else:
        print("cmp_ints: arg1: {} and arg2: {} are equal".format(arg1, arg2))
        return [arg1]

print("cmp_ints is type ", type(cmp_ints))

def get_powers(max_int):
    powers = []                     # start with empty list
    looper = max_int
    while looper > 0:
        this_pow = looper ** 2
        powers.append(this_pow)     # keep adding to list
        looper -= 1                 # until looper is 0
    return powers

print("get_powers is type ", type(get_powers))

#########################################################
# main
#########################################################

if __name__ == "__main__":

    print("sys.argv list: ", sys.argv)
    if len(sys.argv) < 3:
        #logging.error(" {} is missing arguments".format(sys.argv[0]))
        #sys.exit(1)
        arg1,arg2 = input("Enter 2 coma-separated values: ") 
    else:
        arg1 = sys.argv[1]
        arg2 = sys.argv[2]

    try:
        i = int(arg1)
        j = int(arg2)
    except:
        logging.error(" Arguments {} and {} are not integers".format(arg1, arg2))
        sys.exit(1)
        
    range_list = cmp_ints(i, j)
    print("length of range_list is: {}\nhere is the list: {}".format(len(range_list), range_list))
    for each in range_list:
        print(each)

    powers = get_powers(max(i, j))      # use built-in max function to pass in max integer
    print("powers ", powers)

    # exiting and all is good       
    sys.exit()
