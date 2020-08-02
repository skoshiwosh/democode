#!/usr/bin/env python
"""
    Gui wrapper for carpenter client invoice script, clientinvoice.py
    
    Version: 1.0
    Date: July 27, 2020
    Author: Suzanne Berger
    Contact: zanefx7@gmail.com
"""

import sys
import os
from datetime import date

from PySide2 import QtCore, QtGui, QtWidgets
from PySide2 import QtUiTools

import clientinvoice as cinv


#########################################################
# InvoiceWin
#########################################################

class InvoiceWin(QtWidgets.QDialog):

    def __init__(self, parent=None):
        QtWidgets.QDialog.__init__(self, parent)

        self._initUI()
        self._connectSignals()

    def _initUI(self):
        pass

    def _connectSignals(self):
        pass


############################################################
# main
############################################################

if __name__ == '__main__':
    
    app = QtWidgets.QApplication(sys.argv)
    invoicewin = InvoiceWin()
    sys.exit(app.exec_())
