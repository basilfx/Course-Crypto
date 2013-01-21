# Create set of all primes
prime_set = Primes()

p = 541
g = 2
F = factor(p - 1)

print is_prime(p)

for a, b in F:
    print power_mod(2, Integer((p - 1) / a), p)

# Generate table of first five primes as factor base
primes = [ prime_set.unrank(i) for i in range(5) ]
print primes



# TODO