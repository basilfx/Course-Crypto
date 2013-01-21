m = 171
P = var('P')
R = 0
bits = m.bits()
bits.reverse()

for bit in bits:
    R = 2 * R + (P if bit == 1 else 0)

print R