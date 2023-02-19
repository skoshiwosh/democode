#!/usr/bin/env python
"""
    Demo of control flow and sequence types: str, list, tuple and set
"""

import sys

print("__name__", __name__)

def empty_or_none(arg1=None):
    """ Test whether input is None type or a value that is logically False """
    
    print("empty_or_none: input 'arg1' is:", type(arg1), arg1)

    if arg1 is None:
        print("'arg1' is None\n")
    elif not arg1:
        print(f"'arg1' is False {arg1}\n")
    else:
        print(f"'arg1' is True {arg1}\n")
    return

print("Some examples of strings and sequences\n")

# slicing a string, if second index is negative then index from end of string
mystr1 = "foobar"
mysubstr1 = mystr1[2:4]
mysubstr2 = mystr1[1:-2]
mysubstr3 = mystr1[::2]
# these print functions demo old and new string formats
# oldest uses % notation, newer uses format and
# newest that works for python > 3.5 uses f-string
print('Example string indexing: mystr1 = "%s"' % mystr1)
print('Example string indexing: mystr1 = "{}"'.format(mystr1))
print('mysubstr1 = mystr1[2:4] results in "%s"' % mysubstr1)
print(f'mysubstr1 = mystr1[2:4] results in "{mysubstr1}"')
print(f'mysubstr2 = mystr1[1:-2] results in "{mysubstr2}"')
print(f'mysubstr3 = mystr1[::2] results in "{mysubstr3}"\n')

# stripping a string, if no arg given in strip method, then leading and trailing blanks removed
mystr2 = "**kaku**"
# again demonstrating old and new string formatting methods
print('mystr2 = "%s", mystr2 with leading and trailing stars removed: "%s"' % (mystr2, mystr2.strip('*')))
print('mystr2 = "{}", mystr2 with leading and trailing stars removed: "{}"'.format(mystr2, mystr2.strip('*')))
print(f'mystr2 = "{mystr2}", mystr2 with leading and trailing stars removed: "{mystr2.strip("*")}"')

# assign mystr2 to start stripped upper case
mystr2 = mystr2.strip('*').upper()
print(f'mystr2 with star stripped and converted to upper case: "{mystr2}"\n')

# example list indexing
foolist = [1, 2, 3]
print(f'foolist = {foolist}')
print(f'foolist[-1] generates this: {foolist[-1]}')
print(f'foolist[0:-1] generates this: {foolist[0:-1]}\n')

# example list operations
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

print(f"mylist1 = {mylist1} and mylist2 = {mylist2}\n")
mylist2.extend(mylist1[2:])
print(f"'mylist2' is extended to this {mylist2}\n")

# adding a list to a list is just like using extend method
mylist2 += [5, 0]
print(f"Added list [5, 0] to 'mylist2' results in this: {mylist2}\n")

for each in mylist1:
    mylist2.append(each)
print(f"'mylist2' with appended elements from 'mylist1' is this: {mylist2}\n")

mylist2.sort()
print(f"Now 'mylist2' is sorted {mylist2}\n")

myset = set(mylist2)
print(f"This is 'mylist2' converted to a set: {myset}\n")

# example of list comprehension
mypowlist = [num ** 2 for num in mylist1]
print(f"'mypowlist' is generated using list comprehension: {mypowlist}\n")

sys.exit()
