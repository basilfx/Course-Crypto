p = 863
a = 100
b = 10
c = 1

E = EllipticCurve(Zmod(p), [0, a, 0, b, c])
B = E.point((121, 517))
P = [B]

for i in range(9): 
    P.append(P[-1] + P[-1])

print (P[8] + P[7]) + (P[5] + P[4]) # 432.bits()
print (P[7] + P[6]) + (P[4] + P[3]) # (432 / 2).bits(), 2 is factor of 876
print P[7] + P[4]

# Secret!
mA = 130 # bit 1 and 7
mB = 288 # bit 5 and 8

# Public
qA = P[1] + P[7]
qB = P[5] + P[8]

# Alice
Q = [qB]
for i in range(9):
    Q.append(Q[-1] + Q[-1])
print Q[1] + Q[7]

# Bob
Q = [qA]
for i in range(9):
    Q.append(Q[-1] + Q[-1])
print Q[5] + Q[8]