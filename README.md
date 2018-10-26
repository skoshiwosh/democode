# democode
I developed some of these python scripts for my own use. 
Other scripts herein are intended for teaching python. 
I am planning to add improvements. 
This is my first git repository on GitHub. I’m just getting started with organization. 

ToDo: 
- Aside from code improvements, revise documentation to standard using either Doxygen or Sphinx.
- Improve organization, possibly adding other repositories (or branches).

Files:

python_docs.pdf
- list of links to important web docs on Python, PySide2 and Maya Python commands

python_class_outline.pdf
- my own class outline proposal for teaching python and technical infrastructure to visual effects students
- this does not necessarily correlate with python course taught at specific institutions

scriptinfo.pdf
- description of example python scripts to be used for teaching Python

templatescript.py, demoscript.py, seqtypes.py
- these are described in scriptinfo.pdf

running_pythonscripts.pdf
- demo using templatescript.py to show difference between running script directly from command line or from imported module

userwork.py
- create work subdirectory under global ROOTDIR ending with USERNAME environment variable

verup.py, upv.py
- Copy file argument with added version suffix to base name and save in versions subdirectory
- verup.py is simpler because the version suffix is hard-coded to be “_v%02d”
- upv.py allows user input version suffix and uses regular expression module, re, to parse

findtabs.py
- parse python scripts for hard-tabs from input top-level directory 

patterns_web.py, src_html.py
- Create web page containing images using templates from module, src_html.py

collager.py
- Launch window to create mirrored tiled images from source image file
- Look at collager_init.png and collager_done.png 

The next three scripts should be considered work in progress:
wedgit.py
- return numeric list of values based on input min/max value and scale factor or start value, step size and number of steps

wedgitui.py 
- user interface using PySide2 for creating wedge values created from functions in wedgit.py
- script is incomplete but ultimately should have buttons to create and connect wedge node

mkwdg.py
- contains following functions:
- create locator node with extra attributes to contain wedge values created from wedgit functions
- connect wedge locator node wedge attributes to node attribute to be wedged
- increment wedge index
