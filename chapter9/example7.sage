# Create set of all primes
prime_set = Primes()
 
n = 661643 # = 541 * 1223
k = 10
SS = [-1, 2]
i = 2

while (len(SS) - 2) < k:
    p = prime_set.unrank(i - 1)

    if n.jacobi(p) == 1:
        SS.append(p)
        
    i = i + 1

r = floor(sqrt(n))
m = 300;

A = []
B = []
F = []

print "r+i     f(x)     factors"
for i in range(-1 * m, m):

    a = r + i
    b = (i + r) ** 2 - n
    f = list(factor(b))
    valid = True

    #
    # Below here is not written in the book anymore!
    # It is almost the same as example 6
    #

    for p, e in f:
        if not p in SS:
            valid = False
            break

    if valid:
        print "%-7d %-7d %s" % (a, b, f)

        A.append(a)
        B.append(b)
        F.append(f)

# Create V
U = []
for f in F:
    u = [ 0 for i in range(len(SS)) ]

    for p, e in f: 
        u[SS.index(p)] = e

    U.append(u)

V = matrix(GF(2), U)
W = kernel(V).matrix()

# Define operations
product = lambda z: reduce(lambda x, y: x*y, z)

for row in W.rows():
    # This will generate a[i] * a[j] * a[k] for i, j, k being 1 in set I
    x = product([ A[j] for i, j in zip(row, range(len(row))) if i == 1  ])
    y = product([ B[j] for i, j in zip(row, range(len(row))) if i == 1  ])

    # Take sqrt
    y = sqrt(y)

    d = gcd(x - y, n)
    if d < n: print d