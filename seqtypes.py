#!/usr/bin/env python
"""
    Demo of control flow and sequence types: str, list, tuple and set
"""

import sys


def empty_or_none(arg1=None):
    """ Test whether input is None type or a value that is logically False """
    print("empty_or_none: input 'arg1' is type", type(arg1))

    if arg1 is None:
        print("")
    elif not arg1:
        print("'arg1' is False %s\n" % arg1)
    else:
        print("'arg1' is True %s\n" % arg1)
    return


# slicing a string, if second index is negative then index from end of string
mystr1 = "foobar"
mysubstr1 = mystr1[1:-2]
print("'mystr1' = %s and 'mysubstr1' = %s" % (mystr1, mysubstr1))

# stripping a string, if no arg given in strip method, then leading and trailing blanks removed
mystr2 = "**kaku**"
print("'mystr2': %s, 'mystr2' with leading and trailing stars removed: %s\n" % (mystr2, mystr2.strip('*')))

# assign mystr2 to start stripped upper case
mystr2 = mystr2.strip('*').upper()
print("'mystr2': %s star stripped and converted to upper case\n" % mystr2)

mylist1 = [1, 2, 8, 9]
mylist2 = []
nothing = None

# note the difference between a None type object or an object that logically is False
empty_or_none(nothing)
empty_or_none(mylist1)
empty_or_none(mylist2)
empty_or_none(False)
for i in range(-1,2):
    empty_or_none(i)

mylist2.extend(mylist1[2:])
print("'mylist2' is extended to this %s" % mylist2)

# adding a list to a list is just like using extend method
mylist2 += [5, 0]
print("added list [5, 0] to 'mylist2' results in this: %s" % mylist2)

for each in mylist1:
    mylist2.append(each)

print("'mylist2' with appended elements from 'mylist1' %s" % mylist2)

mylist2.sort()
print("now 'mylist2' is sorted %s" % mylist2)

myset = set(mylist2)
print("This is 'mylist2' converted to a set", myset)


sys.exit()
