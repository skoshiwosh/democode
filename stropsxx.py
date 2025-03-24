Python 3.13.2 (v3.13.2:4f8bb3947cf, Feb  4 2025, 11:51:10) [Clang 15.0.0 (clang-1500.3.9.4)] on darwin
Type "help", "copyright", "credits" or "license()" for more information.
>>> nickname1 = "peanuts"
>>> nickname2 = 'bergerbits'
>>> allmynames = """
... peanuts
... bergerbits
... skoshiwosh
... zany
... """
>>> allmynames
'\npeanuts\nbergerbits\nskoshiwosh\nzany\n'
>>> print(allmynames)

peanuts
bergerbits
skoshiwosh
zany

>>> nickname1
'peanuts'
>>> nickname2
'bergerbits'
>>> # you can add strings together like numbers
>>> nickname1 + ' ' + nickname2
'peanuts bergerbits'
>>> # but preferable way is to use f, format or % for string formatting
>>> f"{nickname1} {nickname2}"
'peanuts bergerbits'
>>> "{} {}".format(nickname1,nickname2)
'peanuts bergerbits'
>>> "%s %s" % (nickname1,nickname2)
'peanuts bergerbits'
>>> mynicknames = f"{nickname1} {nickname2}"
>>> print(mynicknames)
peanuts bergerbits
>>> # use 'r' for raw string: good is escape character in string
>>> foobar = r'foo\noo'
>>> foobar
'foo\\noo'
>>> # raw strings good for Windows file paths due to backslash in Windows path
>>> nickname1[0]
'p'
>>> nickname1[-1]
's'
>>> nickname1[3:5]
'nu'
>>> nickname[0:-1:2]
Traceback (most recent call last):
  File "<pyshell#27>", line 1, in <module>
    nickname[0:-1:2]
NameError: name 'nickname' is not defined. Did you mean: 'nickname1'?
>>> nickname1[0:-1:2]
'pau'
>>> # strings are immutable so you can't do this
>>> nickname1[4] = 'x'
Traceback (most recent call last):
  File "<pyshell#30>", line 1, in <module>
    nickname1[4] = 'x'
TypeError: 'str' object does not support item assignment
# to change a string variable you need to re-assign it
nickname3 = f"{nickname1[0:4]}x{nickname1[4:]}"
nickname3
'peanxuts'
# here are some common string methods
# note that results must be re-assigned to a string variable
nickname1.upper()
'PEANUTS'
nickname1.capitalize()
'Peanuts'
nickname3.index('x')
4
nickname3.index('y')
Traceback (most recent call last):
  File "<pyshell#39>", line 1, in <module>
    nickname3.index('y')
ValueError: substring not found
nickname3.find('y')
-1
nickname3.find('x')
4
if nickname3.find('x') >= 0:
    print("found 'x'")

    
found 'x'
foobar = "   foobar   "
foobar.strip()
'foobar'
foobar = "*foobar*"
foobar.strip('*')
'foobar'
foobar.rstrip('*')
'*foobar'
all_names = f"{nickname1} {nickname2} {nickname3} skoshiwosh zany"
all_names
'peanuts bergerbits peanxuts skoshiwosh zany'
name_list = all_names.split()
name_list
['peanuts', 'bergerbits', 'peanxuts', 'skoshiwosh', 'zany']
new_all_names = '***'.join(name_list)
new_all_names
'peanuts***bergerbits***peanxuts***skoshiwosh***zany'
new_all_names.startswith('p')
True
new_all_names.isdigit()
False
new_all_names.isalpha()
False
nickname1.isalpha()
True
