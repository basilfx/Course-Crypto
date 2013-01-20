# Create set of all primes
prime_set = Primes()

p = prime_set.unrank(501 - 1) # Congruent to 3 mod 4
c = 2177
print mod(p, 8) == 5
print c.jacobi(p) == 1

d = (c ** ((p - 1) / 4) % p)

if d == 1:
    m = c**((p + 3) / 8) % p
else:
    m = 2*c*(4*c**((p - 5) / 8) % p) % p

print m, power_mod(m, 2, p), power_mod(-1 * m, 2, p)