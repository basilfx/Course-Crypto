# Related messages m1 and f(m2) with small public exponent

e = 3
n = 477310661
c1 = 5908795
c2 = 374480016

a = 3
b = 5

f = mod(b * (c2 + 2 * (a**3) * c1 - b**3), n)
g = mod(a * (c2 - (a**3) * c1 + 2*(b**3)), n)

m1 = var('m1')
d = solve_mod(f == g * m1, n)

m1 = d[0][0]
m2 = mod(3 * m1 + 5, n)

print m1
print m2
print power_mod(m1, e, n) == c1
print power_mod(m2, e, n) == c2