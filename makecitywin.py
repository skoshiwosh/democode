#!/usr/bin/env python
"""
    UI for makecity
    
    File: makecitywin.py
    Version: 1.0
    Date: Novemeber 2019
    Author: Suzanne Berger
    Contact: zanefx7@gmail.com
"""

import sys
import logging
from pprint import pprint

from PySide2 import QtCore, QtGui, QtWidgets
from maya import OpenMayaUI as omui
from shiboken2 import wrapInstance
import maya.cmds as cmds
import maya.OpenMaya as om

import makecity

#########################################################
# globals
#########################################################

VERSION = "V01"

logging.basicConfig(level=logging.INFO)
logging.info(" %s Version %s" % (__file__, VERSION))

def mayawindow():
    """ Return Maya's Main Window Object """
    mayaMainWindowPtr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(mayaMainWindowPtr), QtWidgets.QWidget)
    #return wrapInstance(long(mayaMainWindowPtr), QtWidgets.QWidget)
    # versions of Maya earlier than 2022 are based on Python 2 and
    # require 'long' type conversion instead of 'int'


#########################################################
# MakeCityWin class definition
#########################################################

class MakeCityWin(QtWidgets.QDialog):

    def __init__(self, parent=mayawindow()):
        
        if parent is not None:
            QtWidgets.QDialog.__init__(self, parent)
        
        self.setWindowFlags(QtCore.Qt.Window)      # for windows
        #self.setWindowFlags(QtCore.Qt.Tool)       # for mac osx
        
        self._initUI()
        self._connectSignals()
        
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
        self.stepZ_label = QtWidgets.QLabel("StepZ ")
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
        #print("Closing Make City Window")
        #om.MGlobal.displayInfo("Closing Make City Window")
        logging.info("Closing Make City Window")
        event.accept()


############################################################
# slots
############################################################

    def mkbldgs(self):
        logging.info("Make Buildings clicked")
        cube = cylinder = ""
        sel = False
        
        if self.cube_checkBox.isChecked():
            cube = "cube0"
        
        if self.cylinder_checkBox.isChecked():
            cylinder = "cylinder0"
        
        if self.selection_checkBox.isChecked():
            sel = True
        
        #makecity.mkbldgs("bldg_grp", cube, cylinder, sel)
        makecity.mkcube("bldg_grp", "cube0")

    def mkcity(self):
        logging.info("Make City clicked")
        if self.grid_radioButton.isChecked():
            rows = self.rows_spinBox.value()
            cols = self.cols_spinBox.value()
            # ToDo: add stepsize
            newcity = makecity.copy2grid("bldg_grp", numrows=rows, numcols=cols)
        else:
            obj = self.surface_lineEdit.text()
            newcity = makecity.copy2vtx("bldg_grp", obj)
        
        #makecity.randgeo(newcity, randrotate=True)
        makecity.randgeo(newcity)

    def selsurf(self):
        logging.info("Select Surface clicked")
        surface = cmds.ls(sl=True)[0]
        self.surface_lineEdit.setText(surface)


############################################################
# main
############################################################

if __name__ == '__main__':
    
    logging.info("Running as main")
    app = QtWidgets.QApplication(sys.argv)
    makecitywin = MakeCityWin(parent=None)
    makecitywin.show()
    sys.exit(app.exec_())


