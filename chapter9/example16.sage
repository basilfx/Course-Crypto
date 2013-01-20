# Create set of all primes
prime_set = Primes()

#
# Part 1 (page 197)
#

pB = prime_set.unrank(1200 - 1) 
qB = prime_set.unrank(1250 - 1)
nB = pB * qB
m = 12345678
e = 2

c = power_mod(m, e, nB)

m1 = crt([m, m], [pB, qB])
m2 = crt([-1 * m, m], [pB, qB])
m3 = crt([m, -1 * m], [pB, qB])
m4 = crt([-1 * m, -1 * m], [pB, qB])

print "Part 1", m, m1, m2, m3, m4

c1 = power_mod(m1, e, nB)
c2 = power_mod(m2, e, nB)
c3 = power_mod(m3, e, nB)
c4 = power_mod(m4, e, nB)

print "Part 1", c, c1, c2, c3, c4

#
# Part 2 (page 199)
#
a = crt([1, 0], [pB, qB])
b = crt([0, 1], [pB, qB])

print "Part 2", a, b

#
# Part 3 (page 205)
#

print "Part 3", pB % 8, qB % 8

c = 9513124
u = c**((p - 1) / 4) % p
f = c ((p + 3) / 8) % p

print "Part 3", u, f

# TODO