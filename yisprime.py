#!/usr/bin/env python
"""
    Test if input is a prime number.
"""

import sys

def isprime(n):
    for i in range(2, n/2 + 1):
        if n % i == 0:
            return False
    return True


if __name__ == "__main__":
    
    if len(sys.argv) < 2:
        n = input("Enter a positive integer: ")
    else:
        n = int(sys.argv[1])

    if isprime(n):
        print("Input %d is a prime number" % n)
    else:
        print("Input %d is not a prime number" % n)

    sys.exit()