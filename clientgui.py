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
#from datetime import date
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

DEFAULTDIR = "/Users/suzanneberger/Documents/teaching/terence"

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
    
        # widgets and layout for client name, load and new client invoice files
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
    
        # widgets and layout for client address
        self.address_label = QtWidgets.QLabel("Client Address:  ")
        self.address_label.setFixedSize(101,21)
        self.address_lineEdit = QtWidgets.QLineEdit()
        self.address_lineEdit.setFixedHeight(21)
        self.address_lineEdit.setMinimumWidth(101)
        
        address_layout = QtWidgets.QHBoxLayout()
        address_layout.addWidget(self.address_label)
        address_layout.addWidget(self.address_lineEdit)
        
        # widgets and layout for client phone and email
        self.phone_label = QtWidgets.QLabel("Client Phone:  ")
        self.phone_label.setFixedSize(101,21)
        self.phone_lineEdit = QtWidgets.QLineEdit()
        self.phone_lineEdit.setFixedSize(131,21)
        
        self.email_label = QtWidgets.QLabel("   Client Email:  ")
        self.email_label.setFixedSize(101,21)
        self.email_lineEdit = QtWidgets.QLineEdit()
        self.email_lineEdit.setFixedHeight(21)
        self.email_lineEdit.setMinimumWidth(151)
        
        phone_layout = QtWidgets.QHBoxLayout()
        phone_layout.addWidget(self.phone_label)
        phone_layout.addWidget(self.phone_lineEdit)
        #phone_layout.addStretch(3)
        phone_layout.addWidget(self.email_label)
        phone_layout.addWidget(self.email_lineEdit)
        
        # widgets and layout for client contract start, end date and hours worked
        self.start_label = QtWidgets.QLabel("Start Date:  ")
        self.start_label.setFixedSize(101,21)
        self.start_dateEdit = QtWidgets.QDateEdit()
        self.start_dateEdit.setFixedSize(131,21)
        self.default_date = self.start_dateEdit.date()
        
        self.end_label = QtWidgets.QLabel("   End Date:  ")
        self.end_label.setFixedSize(101,21)
        self.end_dateEdit = QtWidgets.QDateEdit()
        self.end_dateEdit.setFixedSize(131,21)
        #self.end_dateEdit.setDate(QtCore.QDate.currentDate())
        
        self.hours_label = QtWidgets.QLabel("  Hours Worked: ")
        self.hours_label.setFixedSize(101,21)
        self.hours_spinBox = QtWidgets.QSpinBox()
        self.hours_spinBox.setRange(1,999)
        self.hours_spinBox.setFixedSize(61,21)
        
        date_layout = QtWidgets.QHBoxLayout()
        date_layout.addWidget(self.start_label)
        date_layout.addWidget(self.start_dateEdit)
        date_layout.addWidget(self.end_label)
        date_layout.addWidget(self.end_dateEdit)
        date_layout.addWidget(self.hours_label)
        date_layout.addWidget(self.hours_spinBox)
        date_layout.addStretch(2)
 
        # widgets and layout for labour and material cost, discount
        self.labour_label = QtWidgets.QLabel("Labour Cost:  ")
        self.labour_label.setFixedSize(101,21)
        self.labour_spinBox = QtWidgets.QSpinBox()
        self.labour_spinBox.setPrefix("$")
        self.labour_spinBox.setRange(40,99999)
        self.labour_spinBox.setSingleStep(20)
        self.labour_spinBox.setFixedSize(81,21)
        self.labour_spinBox.setAlignment(QtCore.Qt.AlignRight)
        
        self.material_label = QtWidgets.QLabel("  Material Cost:  ")
        self.material_label.setFixedSize(91,21)
        self.material_spinBox = QtWidgets.QSpinBox()
        self.material_spinBox.setPrefix("$")
        self.material_spinBox.setRange(0,99999)
        self.material_spinBox.setSingleStep(5)
        self.material_spinBox.setFixedSize(81,21)
        self.material_spinBox.setAlignment(QtCore.Qt.AlignRight)
        
        self.discount_label = QtWidgets.QLabel("  Discount: ")
        self.discount_label.setFixedSize(71,21)
        self.discount_spinBox = QtWidgets.QSpinBox()
        self.discount_spinBox.setPrefix("%")
        self.discount_spinBox.setFixedSize(81,21)
        self.discount_spinBox.setAlignment(QtCore.Qt.AlignRight)
        
        cost_layout = QtWidgets.QHBoxLayout()
        cost_layout.addWidget(self.labour_label)
        cost_layout.addWidget(self.labour_spinBox)
        cost_layout.addWidget(self.material_label)
        cost_layout.addWidget(self.material_spinBox)
        cost_layout.addWidget(self.discount_label)
        cost_layout.addWidget(self.discount_spinBox)
        cost_layout.addStretch(2)
 
        # widgets and layout for total cost
        self.totalcost_label = QtWidgets.QLabel("Total Cost: ")
        self.totalcost_label.setFixedSize(101,21)
        self.totalcost_lineEdit = QtWidgets.QLineEdit("$0")
        self.totalcost_lineEdit.setFixedSize(131,21)
        self.totalcost_lineEdit.setAlignment(QtCore.Qt.AlignRight)
        
        totalcost_layout = QtWidgets.QHBoxLayout()
        totalcost_layout.addWidget(self.totalcost_label)
        totalcost_layout.addWidget(self.totalcost_lineEdit)
        totalcost_layout.addStretch(5)
 
        # widgets and layout for client invoice file
        self.file_label = QtWidgets.QLabel("Client Invoice File:  ")
        self.file_label.setFixedSize(121,21)
        self.file_lineEdit = QtWidgets.QLineEdit()
        self.file_lineEdit.setFixedHeight(21)
        self.name_lineEdit.setMinimumWidth(201)
        
        file_layout = QtWidgets.QHBoxLayout()
        file_layout.addWidget(self.file_label)
        file_layout.addWidget(self.file_lineEdit)
    
        # widgets and layout for status display
        status_label = QtWidgets.QLabel("Status:  ")
        status_label.setFixedSize(61,21)
        self.status_lineEdit = QtWidgets.QLineEdit("Ready:")
        self.status_lineEdit.setFixedHeight(21)
        self.status_lineEdit.setMinimumWidth(580)
        
        status_layout = QtWidgets.QHBoxLayout()
        status_layout.addWidget(status_label)
        status_layout.addWidget(self.status_lineEdit)
    
    
        # dialog buttons
        self.buttonbox = QtWidgets.QDialogButtonBox(QtWidgets.QDialogButtonBox.Save |
                                                QtWidgets.QDialogButtonBox.Reset |
                                                QtWidgets.QDialogButtonBox.Close)
        
        # main layout
        mainLayout = QtWidgets.QVBoxLayout()
        mainLayout.addLayout(head_layout)
        mainLayout.addLayout(address_layout)
        mainLayout.addLayout(phone_layout)
        mainLayout.addLayout(date_layout)
        mainLayout.addLayout(cost_layout)
        mainLayout.addLayout(totalcost_layout)
        mainLayout.addStretch(11)
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

    def set_contact(self):
        self.client.set_name(self.name_lineEdit.text())
        self.client.set_address(self.address_lineEdit.text())
        self.client.set_phone(self.phone_lineEdit.text())
        self.client.set_email(self.email_lineEdit.text())
    
    def set_dateshours(self):
        this_start = self.start_dateEdit.date().toString(QtCore.Qt.ISODate)
        self.client.set_start(this_start)
        this_end = self.end_dateEdit.date().toString(QtCore.Qt.ISODate)
        self.client.set_end(this_end)
        self.client.hours_worked = self.hours_spinBox.value()
    
    def set_costs(self):
        self.client.material_cost = self.material_spinBox.value()
        this_cost = self.client.set_totalcost()
        self.totalcost_lineEdit.setText("${}".format(this_cost))

    def save(self):
        logging.info("Save clicked")
        
        jsonfile = None
        if self.newjson:
            client_name = self.name_lineEdit.text()
            client_address = self.address_lineEdit.text()
            client_phone = self.phone_lineEdit.text()
            client_email = self.email_lineEdit.text()
            jsonfile = self.client.newjson(client_name,
                                    client_address=client_address,
                                    client_phone=client_phone,
                                    client_email=client_email,
                                    jsonfile=self.jsondir)
            if jsonfile:
                self.file_lineEdit.setText(jsonfile)
                self.status_lineEdit.setText("Created new client invoice json file")
        else:
            self.set_contact()
            self.set_dateshours()
            self.set_costs()
            self.client.updatejson()
            logging.info("Updated json file: {}".format(self.file_lineEdit.text()))
            self.status_lineEdit.setText("Updated json file: {}".format(self.file_lineEdit.text()))

    def reset(self):
        logging.info("Resetting Client Invoice window")
        self.newjson = False
        # delete any exisiting client object and create new client object
        self.name_lineEdit.clear()
        self.address_lineEdit.clear()
        self.phone_lineEdit.clear()
        self.email_lineEdit.clear()
        self.start_dateEdit.setDate(self.default_date)
        self.end_dateEdit.setDate(self.default_date)
        self.file_lineEdit.clear()
        self.status_lineEdit.setText("Ready: ")

    def on_load_clicked(self):
        logging.info("Load button clicked")
        jsonfile = QtWidgets.QFileDialog.getOpenFileName(self,
                                        'Select json File', DEFAULTDIR,
                                        "json files (*.json)")[0]
        
        logging.info("Loading json: {}".format(jsonfile))
        self.file_lineEdit.setText(jsonfile)
        self.client_dict = self.client.loadjson(jsonfile)
        self.name_lineEdit.setText(self.client_dict["client_name"])
        self.address_lineEdit.setText(self.client_dict["client_address"])
        self.phone_lineEdit.setText(self.client_dict["client_phone"])
        self.email_lineEdit.setText(self.client_dict["client_email"])
        start_date = self.client_dict["start_date"]
        print("start_date",start_date, type(start_date))
        self.start_dateEdit.setDate(QtCore.QDate.fromString(start_date, QtCore.Qt.ISODate))
        end_date = self.client_dict["end_date"]
        self.end_dateEdit.setDate(QtCore.QDate.fromString(end_date, QtCore.Qt.ISODate))
        self.hours_spinBox.setValue(self.client_dict["hours_worked"])
        self.material_spinBox.setValue(int(self.client_dict["material_cost"][1:]))
        self.totalcost_lineEdit.setText(self.client_dict["total_cost"])
                                         
    def on_new_clicked(self):
        logging.info("New button clicked")
        # should check that at least a client name is entered
        # should update the file line edit with an entry for file path
        self.jsondir = QtWidgets.QFileDialog.getExistingDirectory(self,
                            'Select Directory', DEFAULTDIR,
                            QtWidgets.QFileDialog.ShowDirsOnly | QtWidgets.QFileDialog.DontResolveSymlinks)

        self.start_dateEdit.setDate(QtCore.QDate.currentDate())
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
