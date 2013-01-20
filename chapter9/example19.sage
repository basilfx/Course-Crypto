lqr = lambda p: filter(lambda x: x.jacobi(p) == 1, IntegerRange(p))

p = 11
print lqr(p)

# TODO