# Operation
f = lambda v, w, x, y, z: (v + z) % 2 # f(x) = 1 + x^4 + x^5

# Initial states
s0, s1, s2, s3, s4 = 1, 0, 0, 0, 0
#s0, s1, s2, s3, s4 = 1, 1, 1, 0, 0

# Shift
for i in range(21):
    s0, s1, s2, s3, s4 = s1, s2, s3, s4, f(s0, s1, s2, s3, s4)

    # Output
    print i, [s0, s1, s2, s3, s4]