p = 15
x = PolynomialRing(GF(2), 'x').gen()

S = 1 + x^4 + x^7 + x^8 + x^10 + x^12 + x^13 + x^14
T = x^p - 1

# Take GCD
g = S.gcd(T)

# Divide
MSTAR = T / g

# Done
print MSTAR