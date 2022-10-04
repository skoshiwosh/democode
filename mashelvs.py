try:
    reload(makecitywin)
except:
    import makecitywin
    
citywin = makecitywin.MakeCityWin()
citywin.show()

#########################

try:
    reload(makecity)
except:
    import makecity

newcube = makecity.mkcube("building_grp", "cube0")
newcity = makecity.copy2grid("building_grp")
makecity.randgeo(newcity)


#########################

import sys
import os
from PySide2 import QtCore, QtGui, QtWidgets
from maya import cmds,mel
