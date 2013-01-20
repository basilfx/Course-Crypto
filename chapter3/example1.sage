# Two helpers
def rotate_left(l, n):
    return l[n:] + l[:n]

def list_sub(x, y):
    return [ (a - b) % 2 for a, b in zip(x, y) ]

# Input data
segment = [1, 1, 0, 1, 0, 0, 0, 0]
p = len(segment)

# Define operations
A = lambda k: list_sub(segment, rotate_left(segment, k)).count(0)
AC = lambda k: (2 * A(k) - p) / p

# Done
print [ AC(k) for k in range(p) ]