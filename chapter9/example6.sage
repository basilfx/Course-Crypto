# Create set of all primes
prime_set = Primes()

n = 84923 # = 163 * 521
n = 1271 # = 41 * 31
S = [ prime_set.unrank(i) for i in range(8) ]

# It's generally sufficient that the number of relations be a few more than the
# size of S.
A = []
B = []
F = []

while len(A) < len(S) * 2:
    a = randint(1, n)
    b = a**2 % n
    f = list(factor(b))
    valid = True

    for p, e in f:
        if p not in S:
            valid = False
            break
    
    if valid:
        A.append(a)
        B.append(b)
        F.append(f)

# Pretty print
print "a       b       factors"
for i in zip(A, B, F):
    print "%-7d %-7d %s" % i

# Create V
U = []
for f in F:
    u = [ 0 for i in range(len(S)) ]

    for p, e in f: 
        u[S.index(p)] = e

    U.append(u)

V = matrix(GF(2), U)
W = kernel(V).matrix()

# Define operations
product = lambda z: reduce(lambda x, y: x*y, z)

# Output
print "Factors:"
for row in W.rows():
    # This will generate a[i] * a[j] * a[k] for i, j, k being 1 in set I
    x = product([ A[j] for i, j in zip(row, range(len(row))) if i == 1 ])
    y = product([ B[j] for i, j in zip(row, range(len(row))) if i == 1 ])

    # Take sqrt
    y = sqrt(y)

    print gcd(x - y, n)