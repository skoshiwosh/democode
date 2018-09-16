#!/usr/bin/env python
"""
    Example template python script.
"""

import sys


def foobar(arg1, arg2):
    print("foobar: arguments are {} and {}".format(arg1, arg2))
    
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

    
if __name__ == "__main__":

    print("sys.argv is a list")
    print(sys.argv)
    if len(sys.argv) < 3:
        print("Error: {} is missing arguments".format(sys.argv[0]))
        sys.exit(1)

    arg1 = sys.argv[1]
    arg2 = sys.argv[2]

    foobar(arg1, arg2)

    try:
        i = int(arg1)
        j = int(arg2)
    except:
        print("Error: arguments {} and {} are not integers".format(arg1, arg2))
        sys.exit(1)
        
    range_list = cmp_ints(i, j)
    print("length of range_list is: {}\nhere is the list: {}".format(len(range_list), range_list))
    for each in range_list:
        print(each)

    # of course one should use built-in function, max, to do this
    max_int = max(i, j)
    print("max_int using max built-in function", max_int)

    looper = max_int
    while looper > 0:
        print("looper = {}".format(looper))
        looper -= 1
    print("all done looping looper")
    
    # exiting and all is good       
    sys.exit()
