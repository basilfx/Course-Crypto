# Note: example 9.1 is split in several parts in the book. At some points they
# state variables that have already been calculated. In this file, this is not 
# the case.

# Own implementation of Phi(n) instead Sage version
def my_euler_phi(n):
    factors = [ p**e for p, e in factor(n) ]

    phi = 1
    old_factor = 1

    for current_factor in factors:
        if current_factor == old_factor:
            phi = phi * current_factor
        else:
            phi = phi * (current_factor - 1)
            old_factor = current_factor

    # Done
    return phi

# Prime factory
factory = Primes()

#
# Part 1 (page 148)
#

# Generate 1200th and 1250th prime number. Note: zero indexing!!
pB = factory.unrank(1200 - 1)  
qB = factory.unrank(1250 - 1)
nB = pB * qB
phiB = euler_phi(nB)

# Print result
print "Part 1", phiB, my_euler_phi(nB)

#
# Part 2 (page 149)
#

# Take random E
eB = randint(1, nB)

while gcd(eB, phiB) != 1:
    eB = randint(1, nB)

# Determine the D based on E
_, dB, _ = xgcd(eB, phiB)

# Print result
print "Part 2", eB, (eB * dB % phiB)

#
# Part 3 (page 150)
#

nB = 99052741; eB = 81119923; dB = 17089915;
m = 12345678

# Encrypt & decrypt
c = power_mod(m, pB, qB)
m = power_mod(c, pB, qB)

# Print result
print "Part 3", c, m

#
# Part 4 (page 151)
#

# Chinese remainder theorem
a = crt(1, 0, pB, qB)
b = crt(0, 1, pB, qB)

c = 38447790
c1 = c % pB
c2 = c % qB
d1 = dB % (pB - 1)
d2 = dB % (qB - 1)
m1 = power_mod(c1, d1, pB)
m2 = power_mod(c2, d2, qB)

m = (m1 * a + m2 * b) % nB
print "Part 4", c1, c2, d1, d2, m1, m2, m

#
# Part 5 (page 153)
#

m = 11111111
c = power_mod(m, dB, nB)

print "Part 5", m, c