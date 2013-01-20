# Operation
f = lambda w, x, y, z: (w + x) % 2

# Initial state
s0, s1, s2, s3 = 1, 0, 0, 0

# Shift
for i in range(15):
    s0, s1, s2, s3 = s1, s2, s3, f(s0, s1, s2, s3)

    # Output
    print i, [s0, s1, s2, s3]