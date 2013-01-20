M = matrix(GF(2), [
    [1, 1, 0, 1, 1],
    [1, 0, 1, 1, 1],
    [0, 1, 1, 1, 0],
    [1, 1, 1, 0, 1],
    [1, 1, 0, 1, 0]
])

b = vector(GF(2), [1, 0, 1, 0, 1])
x = M.solve_right(b) # Solving M*x = b

n = 5
c = x.list()
s = M[0].list()

for k in range(n, 2**n - 1):
    s.append(sum([c[i] * s[k - n + i] for i in range(n) ]) % 2)

print s