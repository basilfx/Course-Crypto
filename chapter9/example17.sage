# Create set of all primes
prime_set = Primes()

p = prime_set.unrank(500 - 1) # Congruent to 3 mod 4
c = 2868
print mod(p, 4) == 3
print c.jacobi(p) == 1

m = c ** ((p + 1) / 4) % p
print m, power_mod(m, 2, p), power_mod(-1 * m, 2, p)