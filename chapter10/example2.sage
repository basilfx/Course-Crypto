p = 11
ZP.<x> = ZZ[]

il = 4*x + 1
ec = x^3 - 5*x + 3

print (il^2 - ec).factor_mod(p)

# Results in -2, -7 and -8
x = [ mod(a, p) for a in [-2, -7, -8] ]
y = [ il(a) for a in x ]

print x, y