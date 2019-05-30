n = input("Enter a positive integer: ")
isPrime = True
for i in range(2, n/2 + 1):
    if n % i == 0:
        isPrime = False
        break

if isPrime:
    print("Input is a prime number")
else:
    print("Input is not a prime number")

