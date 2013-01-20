# Operation
f = lambda x, y, z: (x * y + z) % 2

# Initial state
s0, s1, s2 = 0, 1, 1

# Shift 
for i in range(6):
    s0, s1, s2 = s1, s2, f(s0, s1, s2)

    # Output
    print i, [s0, s1, s2]