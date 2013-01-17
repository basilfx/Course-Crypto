n = 9998000099
e = 6203014673

print convergents(continued_fraction(e/n, nterms=10))

# Fraction number 10
k = 85
g = 1
d = 137
s = (e * d - 1) * g / k
print s

t = n - (e * d - 1) * g / k
print t

x = var('x')
v = solve(x**2 - (t + 1)*x + n == 0, x)

print v[0], v[1] 