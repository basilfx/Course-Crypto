#
# Part 1 (page 115)
#

p = 197
a = 2

mA = 56 # Only known to Alice
mB = 111 # Only known to Bob

cA = power_mod(a, mA, p) # Public
cB = power_mod(a, mB, p) # Public

kAB = power_mod(cB, mA, p)
kBA = power_mod(cA, mB, p)

print "Part 1", cA, cB, kAB, kBA, kAB == kBA

#
# Part 2 (page 117)
#

u = 123
r = randint(0, p - 2)
R = power_mod(a, r, p)
S = mod(power_mod(cB, r, p) * u, p)

# (R, S) are sent to receiver
print "Part 2", r, R, 20

# u = S/R^(mB) mod p
print "Part 2", mod(S * power_mod(power_mod(R, mB, p), -1, p), p) 

#
# Part 3 (page 118)
#

r = 97
R = power_mod(a, r, p)
S = var('S')
print R, solve_mod([r*S == u - mA * R], p - 1)