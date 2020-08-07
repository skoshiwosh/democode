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
import logging

from PySide2 import QtCore, QtGui, QtWidgets
from PySide2 import QtUiTools

import clientinvoice as cinv

#########################################################
# globals
#########################################################

VERSION = "V01"

logging.basicConfig(level=logging.INFO)
logging.info( " %s Version %s" % (sys.argv[0], VERSION))

#########################################################
# InvoiceWin
#########################################################

class InvoiceWin(QtWidgets.QDialog):

    def __init__(self, parent=None):
        QtWidgets.QDialog.__init__(self, parent)

        self.newjson = False
        self.client = cinv.ClientInvoice()
        
        self._initUI()
        self._connectSignals()
        self.show()

    def _initUI(self):
        self.setGeometry(100, 100, 600, 400)
        self.setWindowTitle('Client Invoice')
    
        self.name_label = QtWidgets.QLabel("Client Name:  ")
        self.name_label.setFixedSize(81,21)
        self.name_lineEdit = QtWidgets.QLineEdit()
        self.name_lineEdit.setFixedHeight(21)
        self.name_lineEdit.setMinimumWidth(101)
        self.load_pushButton = QtWidgets.QPushButton("Load Invoice")
        self.load_pushButton.setFixedSize(121, 35)
        self.new_pushButton = QtWidgets.QPushButton("New Invoice")
        self.new_pushButton.setFixedSize(121, 35)
    
        head_layout = QtWidgets.QHBoxLayout()
        head_layout.addWidget(self.name_label)
        head_layout.addWidget(self.name_lineEdit)
        head_layout.addWidget(self.load_pushButton)
        head_layout.addWidget(self.new_pushButton)
    
        self.address_label = QtWidgets.QLabel("Client Address:  ")
        self.address_label.setFixedSize(101,21)
        self.address_lineEdit = QtWidgets.QLineEdit()
        self.address_lineEdit.setFixedHeight(21)
        self.address_lineEdit.setMinimumWidth(101)
        
        address_layout = QtWidgets.QHBoxLayout()
        address_layout.addWidget(self.address_label)
        address_layout.addWidget(self.address_lineEdit)
    
        self.file_label = QtWidgets.QLabel("Client Invoice File:  ")
        self.file_label.setFixedSize(121,21)
        self.file_lineEdit = QtWidgets.QLineEdit()
        self.file_lineEdit.setFixedHeight(21)
        self.name_lineEdit.setMinimumWidth(201)
        
        file_layout = QtWidgets.QHBoxLayout()
        file_layout.addWidget(self.file_label)
        file_layout.addWidget(self.file_lineEdit)
    
        status_label = QtWidgets.QLabel("Status:  ")
        status_label.setFixedSize(61,21)
        self.status_lineEdit = QtWidgets.QLineEdit("Ready:")
        self.status_lineEdit.setFixedHeight(21)
        self.status_lineEdit.setMinimumWidth(580)
        
        status_layout = QtWidgets.QHBoxLayout()
        status_layout.addWidget(status_label)
        status_layout.addWidget(self.status_lineEdit)
    
    
        self.buttonbox = QtWidgets.QDialogButtonBox(QtWidgets.QDialogButtonBox.Save |
                                                QtWidgets.QDialogButtonBox.Reset |
                                                QtWidgets.QDialogButtonBox.Close)
        
        mainLayout = QtWidgets.QVBoxLayout()
        mainLayout.addLayout(head_layout)
        mainLayout.addLayout(address_layout)
        mainLayout.addStretch(31)
        mainLayout.addLayout(file_layout)
        mainLayout.addStretch(3)
        mainLayout.addLayout(status_layout)
        mainLayout.addWidget(self.buttonbox)
        self.setLayout(mainLayout)
    

    def _connectSignals(self):
        self.load_pushButton.clicked.connect(self.on_load_clicked)
        self.new_pushButton.clicked.connect(self.on_new_clicked)
        self.buttonbox.rejected.connect(self.close)
        self.buttonbox.button(QtWidgets.QDialogButtonBox.Save).clicked.connect(self.save)
        self.buttonbox.button(QtWidgets.QDialogButtonBox.Reset).clicked.connect(self.reset)

    def closeEvent(self, event):
        event.accept()

    def save(self):
        #print("Save clicked")
        logging.info("Save clicked")
        jsonfile = None
        if self.newjson:
            client_name = self.name_lineEdit.text()
            client_address = self.address_lineEdit.text()
            jsonfile = self.client.newjson(client_name,
                                    client_address=client_address,
                                    jsonfile=self.jsondir)
        else:
            logging.info("Updating existing json not yet implemented")
            self.status_lineEdit.setText("Updating existing json not yet implemented")
        
        if jsonfile:
            self.file_lineEdit.setText(jsonfile)
            self.status_lineEdit.setText("Created new client invoice json file")


    def reset(self):
        logging.info("Resetting Client Invoice window")
        self.newjson = False
        # delete any exisiting client object and create new client object
        self.name_lineEdit.clear()
        self.address_lineEdit.clear()
        self.file_lineEdit.clear()
        self.status_lineEdit.setText("Ready: ")

    def on_load_clicked(self):
        logging.info("Load button clicked")

    def on_new_clicked(self):
        logging.info("New button clicked")
        self.jsondir = QtWidgets.QFileDialog.getExistingDirectory(self,
                                'Select Directory',
                                '/Users/suzanneberger/Documents/teaching/terence',
                                QtWidgets.QFileDialog.ShowDirsOnly | QtWidgets.QFileDialog.DontResolveSymlinks)

        self.file_lineEdit.setText(self.jsondir)
        self.newjson = True
        return



############################################################
# main
############################################################

if __name__ == '__main__':
    
    app = QtWidgets.QApplication(sys.argv)
    invoicewin = InvoiceWin()
    sys.exit(app.exec_())
