#!/usr/bin/env python
'''
    UI for makecity
    
    @version: 1.0
    @date: Novemeber 2019
    @authors: Suzanne Berger
    @contact: zanefx7@gmail.com
'''

import sys
import logging
from pprint import pprint

from PySide2 import QtCore, QtGui, QtWidgets
from maya import OpenMayaUI as omui
from shiboken2 import wrapInstance

#import makecity_sb as makecity
import makecity

#########################################################
# globals
#########################################################

VERSION = "V01"

logging.basicConfig(level=logging.INFO)
logging.info( " %s Version %s" % (__file__, VERSION))

mayaMainWindowPtr = omui.MQtUtil.mainWindow()
mayaMainWindow = wrapInstance(long(mayaMainWindowPtr), QtWidgets.QWidget)


#########################################################
# MakeCityWin class definition
#########################################################

class MakeCityWin(QtWidgets.QDialog):

    def __init__(self, parent=mayaMainWindow):
        QtWidgets.QDialog.__init__(self, parent)
        
        self.setWindowFlags(QtCore.Qt.Window)
        
        self._initUI()
        self._connectSignals()
        #self.show()
        
    def _initUI(self):
        self.setWindowTitle("Make City")
        self.setGeometry(100, 100, 420, 240)

        # UI for Make Buildings

        self.cube_checkBox = QtWidgets.QCheckBox("Cube")
        self.cube_checkBox.setFixedSize(85, 18)
        self.cube_checkBox.setChecked(True)
        self.cylinder_checkBox = QtWidgets.QCheckBox("Cylinder")
        self.cylinder_checkBox.setFixedSize(85, 18)
        self.selection_checkBox = QtWidgets.QCheckBox("Selection")
        self.selection_checkBox.setFixedSize(85, 18)
        self.mkbldgs_pushButton = QtWidgets.QPushButton("Make Buildings")
        self.mkbldgs_pushButton.setFixedSize(141, 35)
        self.mkbldgs_pushButton.setStyleSheet("background-color: grey")

        bldg_layout = QtWidgets.QHBoxLayout()
        bldg_layout.addWidget(self.cube_checkBox)
        bldg_layout.addWidget(self.cylinder_checkBox)
        bldg_layout.addWidget(self.selection_checkBox)
        bldg_layout.addWidget(self.mkbldgs_pushButton)

        # make UI for grid widgets
        
        self.grid_label = QtWidgets.QLabel("Grid: ")
        self.grid_label.setFixedSize(41, 21)
        
        self.rows_label = QtWidgets.QLabel("Rows ")
        self.rows_label.setFixedSize(35, 21)
        self.rows_spinBox = QtWidgets.QSpinBox()
        self.rows_spinBox.setValue(4)
        self.rows_spinBox.setFixedSize(41, 24)
        self.cols_label = QtWidgets.QLabel("Columns ")
        self.cols_label.setFixedSize(53, 21)
        self.cols_spinBox = QtWidgets.QSpinBox()
        self.cols_spinBox.setValue(4)
        self.cols_spinBox.setFixedSize(41, 24)

        self.stepX_label = QtWidgets.QLabel("StepX ")
        self.stepX_label.setFixedSize(35, 21)
        self.stepX_spinBox = QtWidgets.QSpinBox()
        self.stepX_spinBox.setValue(4)
        self.stepX_spinBox.setFixedSize(41, 24)
        self.stepZ_label = QtWidgets.QLabel("StepY ")
        self.stepZ_label.setFixedSize(35, 21)
        self.stepZ_spinBox = QtWidgets.QSpinBox()
        self.stepZ_spinBox.setValue(4)
        self.stepZ_spinBox.setFixedSize(41, 24)

        grid_layout = QtWidgets.QHBoxLayout()
        grid_layout.addWidget(self.grid_label)
        grid_layout.addWidget(self.rows_label)
        grid_layout.addWidget(self.rows_spinBox)
        grid_layout.addWidget(self.cols_label)
        grid_layout.addWidget(self.cols_spinBox)
        grid_layout.addWidget(self.stepX_label)
        grid_layout.addWidget(self.stepX_spinBox)
        grid_layout.addWidget(self.stepZ_label)
        grid_layout.addWidget(self.stepZ_spinBox)
        
        # make UI for surface widgets
        
        self.surface_label = QtWidgets.QLabel("Surface: ")
        self.surface_label.setFixedSize(51, 21)
        self.surface_lineEdit = QtWidgets.QLineEdit()
        self.surface_lineEdit.setFixedSize(235, 21)
        self.selsurf_pushButton = QtWidgets.QPushButton("Set to Selected")
        self.selsurf_pushButton.setFixedSize(141, 35)
        self.selsurf_pushButton.setStyleSheet("background-color: grey")
        
        surf_layout = QtWidgets.QHBoxLayout()
        surf_layout.addWidget(self.surface_label)
        surf_layout.addWidget(self.surface_lineEdit)
        surf_layout.addWidget(self.selsurf_pushButton)

        #
        self.grid_radioButton = QtWidgets.QRadioButton("City Grid")
        self.grid_radioButton.setChecked(True)
        self.surface_radioButton = QtWidgets.QRadioButton("City Surface")
        self.mkcity_pushButton = QtWidgets.QPushButton("Make City")
        self.mkcity_pushButton.setFixedSize(141, 35)
        self.mkcity_pushButton.setStyleSheet("background-color: grey")
        
        city_layout = QtWidgets.QHBoxLayout()
        city_layout.addWidget(self.grid_radioButton)
        city_layout.addWidget(self.surface_radioButton)
        city_layout.addWidget(self.mkcity_pushButton)
        
        # set main window layout

        mainLayout = QtWidgets.QVBoxLayout()
        mainLayout.addLayout(bldg_layout)
        mainLayout.addLayout(grid_layout)
        mainLayout.addLayout(surf_layout)
        mainLayout.addLayout(city_layout)
        self.setLayout(mainLayout)

    def _connectSignals(self):
        self.mkbldgs_pushButton.clicked.connect(self.mkbldgs)
        self.mkcity_pushButton.clicked.connect(self.mkcity)
        self.selsurf_pushButton.clicked.connect(self.selsurf)

    def closeEvent(self, event):
        print("Closing Window")
        event.accept()


############################################################
# slots
############################################################

    def mkbldgs(self):
        print("Make Buildings clicked")
        #makecity.mkbldgs("bldg_grp", "cube1", "cylinder1")
        makecity.mkcube("building_grp", "cube0")

    def mkcity(self):
        print("Make City clicked")
        #makecity.copy2grid("bldg_grp")
        newcity = makecity.copy2grid("building_grp")
        #makecity.randgeo("city_grp", randrotate=True)
        makecity.randgeo(newcity)

    def selsurf(self):
        print("Select Surface clicked")


############################################################
# main
############################################################

if __name__ == '__main__':
    
    app = QtWidgets.QApplication(sys.argv)
    makecitywin = MakeCityWin()
    sys.exit(app.exec_())


