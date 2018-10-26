# democode
I developed some of these python scripts for my own use. 
Other scripts herein are intended for teaching python. 
I am planning to add improvements. 
This is my first git repository on GitHub. I’m just getting started with organization. 

ToDo: 
- Aside from code improvements, revise documentation to standard using either Doxygen or Sphinx.
- Improve organization, possibly adding other repositories (or branches).

Files:

verup.py 
- Copy file argument with added version suffix to base name and save in versions subdirectory

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
