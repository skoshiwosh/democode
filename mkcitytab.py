from importlib import reload

import maya.cmds as cmds

try:
    reload(makecity)
except:
    import makecity

cmds.file(new = True, force = True)

makecity.mkcube("building_grp","cube0")
newcity = makecity.copy2grid("building_grp")
makecity.randgeo(newcity)

#######################

from importlib import reload

import maya.cmds as cmds

try:
    reload(makecitywin)
except:
    import makecitywin

cmds.file(new = True, force = True)
    
citywin = makecitywin.MakeCityWin()
citywin.show() 


#######################
  
