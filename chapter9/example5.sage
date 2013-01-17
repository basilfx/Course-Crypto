n = 168149075693
a = 1
b = 2
d = gcd(b - a, n)

while d == 1:
    a = (a**2 + 1) % n
    b = (((b**2 + 1) % n)**2 + 1) % n

    d = gcd(b - a, n)

print a, b

p = d
q = n / d
print n, p, q, p*q == n

# Also see http://nl.wikipedia.org/wiki/Pollards_rho-algoritme and Birthday Paradox