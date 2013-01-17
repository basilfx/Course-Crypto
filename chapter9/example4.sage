# Create set of all primes
prime_set = Primes()

#
# Part 1 (page 159)
#

n = 6700892281
S = 50

# Note that prime 15 is smooth, with respect to S
print "Part 1", prime_set.unrank(15 - 1), prime_set.unrank(16 - 1)

# Define operations
product = lambda z: reduce(lambda x, y: x*y, z)
op = lambda i: prime_set.unrank(i) ** floor(log(n, prime_set.unrank(i)))

# Calculate R
R = product([ op(i) for i in range(15)])
print "Part 1", R

# Factor R
F = factor(R)
print "Part 1", F

#
# Part 2 (page 160)
#

# Note: n value is not correct under part 2!
a = randint(2, n)
d = gcd(power_mod(a, R, n) - 1, n)

if d > 1 and d < n:
    p = d
    q = n / p
    print "Part 2", n, a, p, q, p*q == n
else:
    pass # Reselect a or stop

# Note: Pollard p-1 method infeasible if p of the form p = 2p' + 1. Then 
# p - 1 has only one small factor