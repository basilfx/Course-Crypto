# Create set of all primes
prime_set  = Primes()

p = 70877

# Check p for primality
print p in prime_set

# Factor p
F = factor(p - 1)
print F

# Check for smoothness with respect to S
S = 50
smooth = True

for r, i in F:
    if r > S:
        smooth = False
        break

# Done
print ("%d is smooth" if smooth else "%d is not smooth") % p