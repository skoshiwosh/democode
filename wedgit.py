#!/usr/bin/env python
"""
    Return numeric list with values derived from input arguments.
    
    File: wedgit.py
    Author: Suzanne Berger
    Date Created: 09/21/2018
    Python Version: 2.7
"""

import sys
from pprint import pprint

def wedge_minmax(start_value = 0.5, end_value = 1.5, factor = 0.25):
    """ Create list of wedge values using input start end values and scale factor increment. """

    wedge_values = [start_value]

    next_value = start_value
    step_value = round((end_value - start_value) * factor, 2)
    while True:
        next_value += step_value
        if next_value < end_value:
            wedge_values.append(round(next_value,3))
        else:
            break

    wedge_values.append(end_value)

    print("Wedge list derived from start {}, end {}, and step factor {}".
          format(start_value, end_value, factor))
    pprint(wedge_values)
    return wedge_values

def wedge_startstep(start_value = 0.5, step_size = 0.25, num_steps = 3):
    """ Create list of wedge values using input start value, step size and number of steps. """

    wedge_values = [start_value]
    next_value = start_value
    for i in range(num_steps - 1):
        next_value += step_size
        wedge_values.append(round(next_value,3))

    print("Wedge list derived from start {}, step size {}, and step number {}".
          format(start_value, step_size, num_steps))
    pprint(wedge_values)
    return wedge_values
    
if __name__ == "__main__":

    wedge1_values = wedge2_values = []
    if len(sys.argv) != 5:
        wedge1_values = wedge_minmax()
        wedge2_values = wedge_startstep()

    else:
        wedge_option = sys.argv[1]
        if wedge_option == "-mx":
            wdg_min = float(sys.argv[2])
            wdg_max = float(sys.argv[3])
            wdg_factor = float(sys.argv[4])
            wedge1_values = wedge_minmax(wdg_min, wdg_max, wdg_factor)

        if wedge_option == "-ss":
            wdg_min = float(sys.argv[2])
            wdg_step = float(sys.argv[3])
            wdg_num = int(sys.argv[4])
            wedge2_values = wedge_startstep(wdg_min, wdg_step, wdg_num)

    sys.exit()
