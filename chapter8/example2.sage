p = 197
F = GF(p)

# The multiplicative group has order 196, so each element has an order dividing
# 196 (see theorem B.5)
a = F.multiplicative_generator()

# 7 and 2 are factors of p - 1 = 196
print power_mod(2, Integer(196 / 7), 197) == 1
print power_mod(2, Integer(196 / 2), 197) == 1

# The order of 2 modulo 197 does not divide 196/2 or 196/7 so the order must be
# 196