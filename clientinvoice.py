#!/usr/bin/env python
"""
    Class definition for carpenter client invoice data
    
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
        self.total_cost = 0
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
        self.total_cost = self.hours_worked * ClientInvoice.labor_cost + self.material_cost
        if self.discount > 0:
            self.total_cost -= ClientInvoice.labor_cost * self.discount
        return self.total_cost

    def newjson(self, client_name, jsonfile=None):
        parts = client_name.lower().split()
        basename = "{}.json".format(parts[0][0:2] + parts[-1])
        if not jsonfile:
            jsonfile = os.path.join(os.getcwd(), basename)
        elif os.path.isdir(jsonfile):
            jsonfile = os.path.join(jsonfile, basename)
        else:
            return None
        
        self.set_name(client_name)
        self.set_start(date.today().isoformat())
        
        return jsonfile

    def getdict(self):
        client_dict = {
            "client_name": self.client_name,
            "client_address": self.client_address,
            "start_date": self.start_date,
            "end_date": self.end_date,
            "hours_worked": self.hours_worked,
            "material_cost": "${}".format(self.material_cost),
            "discount": self.discount,
            "total_cost": "${}".format(self.total_cost)
        }
        return client_dict

# main
if __name__ == "__main__":

    parser = argparse.ArgumentParser(description = 'Create or update json file containing client invoice data')
    parser.add_argument('-n', '--name', action='store', dest='client_name', default='', help='full client name')
    parser.add_argument('-a', '--address', action='store', dest='client_address', default='', help='full client address')
    parser.add_argument('--hours', type=int, action='store', dest='hours_worked', default=0, help='hours worked')
    parser.add_argument('-m', '--matcost', type=int, action='store', dest='material_cost', default=0, help='material cost')
    parser.add_argument('-j', '--jsonfile', action='store', dest='jsonfile', default=None, help='json file name to be created or updated')
    args = parser.parse_args()

    this_client = ClientInvoice()
    
    if args.client_name:
        this_jsonfile = this_client.newjson(args.client_name, args.jsonfile)
        if this_jsonfile is None:
            print("Error: Invalid jsonfile argument")
            sys.exit(1)
        if args.client_address:
            this_client.set_address(args.client_address)

        client_dict = this_client.getdict()

        client_file = open(this_jsonfile, 'w')
        json.dump(client_dict, client_file, indent=4)
        print("New client: {}".format(this_client.client_name))
        print("Created new client invoice json file: {}".format(this_jsonfile))

    elif os.path.isfile(args.jsonfile):
        client_file = open(args.jsonfile, 'r+')
        client_dict = json.load(client_file)
        print("current client json data")
        print(client_dict)

        this_client.set_name(client_dict['client_name'])
        this_client.set_start(client_dict['start_date'])
        if args.client_address:
            this_client.set_address(args.client_address)
        else:
            this_client.set_address(client_dict['client_address'])

        this_client.hours_worked = args.hours_worked
        this_client.material_cost = args.material_cost
        this_client.set_totalcost()
        this_client.set_end(date.today().isoformat())
        client_dict = this_client.getdict()
        print("updated client json data")
        print(client_dict)

        client_file.seek(0)
        json.dump(client_dict, client_file, indent=4)
        client_file.truncate()
        print("Updated existing client invoice json file: {}".format(args.jsonfile))

    else:
        print("Error: Invalid arguments")
        parser.print_help()

    sys.exit()
