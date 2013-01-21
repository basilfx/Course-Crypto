# Pohlig Hellman Algorithm

q = 8101
a = 6
a_inv = power_mod(a, -1, q)

F = factor(q - 1)
x = power_mod(a, -1, q)

print F, x

T = []
Om = [ power_mod(a, Integer((q - 1) / p), q) for p, e in F ]
print Om

for i in range(len(F)):
    T.append([ power_mod(Om[i], j, q) for j in range(2^i + 1) ])

print T

# Using Chinese Remainder Theorem
U = []
U.append(crt([1, 0, 0], [4, 81, 25]))
U.append(crt([0, 1, 0], [4, 81, 25]))
U.append(crt([0, 0, 1], [4, 81, 25]))

M = []
t = 0
c = 7531

for p, e in F:
    m_i = []
    c_i = [c]

    for i in range(e):
        if i > 0:
            c_i.append(c_i[i - 1] * a^(-1 * x * p^(i - 1)) % q)
        
        x = c_i[i]^((q - 1) / p^(i + 1)) % q
        x = T[t].index(x)
        m_i.append(x * p^i)

    M.append(sum(m_i))
    t = t + 1

print M

print sum( [a * b for a, b in zip(M, U) ]) % 8100

