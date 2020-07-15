#!/usr/bin/env python
"""
    Class definition for carpenter client
    
    Version: 1.0
    Date: July 6, 2020
    Author: Suzanne Berger
    Contact: zanefx7@gmail.com
"""

import sys
import os
from datetime import date
import argparse
import json

class ClientInvoice():
    """ class to define client invoice data """
    labor_cost = 40
    def __init__(self):
        self.client_name = ""
        self.client_address = ""
        self.hours_worked = 0
        self.material_cost = 0
        self.discount = 0
        self.start_date = None
        self.end_date = None

    def set_name(self, client_name):
        self.client_name = client_name
    
    def set_address(self, client_address):
        self.client_address = client_address

    def set_start(self, start_date):
        self.start_date = start_date

    def set_end(self, end_date):
        self.end_date = end_date

    def set_totalcost(self):
        total_cost = self.hours_worked * ClientInvoice.labor_cost + self.material_cost
        if self.discount > 0:
            total_cost -= ClientInvoice.labor_cost * self.discount

        return total_cost


# main
if __name__ == "__main__":

    parser = argparse.ArgumentParser(description = 'Creat and update json file containing client invoice data')
    parser.add_argument('-n', '--name', action='store', dest='client_name', default='', help='full client name')
    parser.add_argument('jsonfile', action='store', help='json file name to be created')
    args = parser.parse_args()

    this_client = ClientInvoice()
    
    this_client.set_name(args.client_name)
    print("json file is: {}".format(args.jsonfile))
    
    this_client.set_address("202-1376 W. 14th Ave, Vancouver, BC")
    this_client.set_start(date(2020,7,1))
    this_client.set_end(date.today())
    this_client.hours_worked = 20
    
    print("Client is: {}".format(this_client.client_name))
    
    this_start = this_client.start_date.isoformat()
    print("Start date is: {}".format(this_start))
    
    this_end = this_client.end_date.isoformat()
    print("End date is: {}".format(this_end))

    this_cost = this_client.set_totalcost()
    print("Cost is: ${} dollars".format(this_cost))
    
    client_dict = {
        "client_name": this_client.client_name,
        "start_date": this_start,
        "end_date": this_end,
        "total_cost": "${}".format(this_cost)
    }

    print("\njson conversion")
    print(json.dumps(client_dict, indent=4))

    #client_file = open('/Users/suzanneberger/Documents/teaching/terence/client_data.json','w')
    #print("client_file type is: {}".format(type(client_file)))
    jsonfile = os.path.join('/Users/suzanneberger/Documents/teaching/terence',args.jsonfile)
    client_file = open(jsonfile, 'w')
    json.dump(client_dict, client_file)

    sys.exit()
